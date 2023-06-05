import { Sequelize } from "sequelize";
import db from "../config/Database.js";

const {DataTypes} = Sequelize;

const Users = db.define('users',{
    uuid:{
        type : DataTypes.STRING,
        defaultValue: DataTypes.UUIDV4,
        allowNull: false,
    },
    name:{
        type : DataTypes.STRING(100),
        allowNull: false,
    },
    email:{
        type : DataTypes.STRING,
        allowNull: false,
        unique: true,
        validate:{
            isEmail: true
        }
    },
    password:{
        type : DataTypes.STRING,
        allowNull: false,
    },
    role:{
        type : DataTypes.STRING,
        allowNull: false,
    }
},{
    freezeTableName: true
});
export default Users;