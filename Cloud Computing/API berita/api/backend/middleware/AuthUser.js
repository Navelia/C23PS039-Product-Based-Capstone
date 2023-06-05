import User from "../models/UserModel.js";

export const verifyUser = async (req, res, next) =>{
    if(!req.session.userId){
        return res.status(401).json({msg:"Mohon login ke akun anda"});
    }
    const user = await User.findOne({
        where: {
            uuid: req.session.userId
        }
    });
    if(!user) return res.status(404).json({msg:"Mohon login ke akun anda"});
    res.userId = user.id;
    req.role = user.role;
    req.app.locals.user = user
    next();
}

export const adminOnly = async (req, res, next) =>{
    const user = await User.findOne({
        where: {
            uuid: req.session.userId
        }
    });
    if(!user) return res.status(404).json({msg:"Mohon login ke akun anda"});
    if(user.role !== "admin") return res.status(403).json({msg:"Hanya Admin"});
    next();
}