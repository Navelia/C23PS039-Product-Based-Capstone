const express = require("express");
const news = express()
const PORT = 9000

const tribunnews = require('./api/tribunnews');
const cnnindonesia = require('./api/cnnindonesia');
const kompas = require('./api/kompas');

news.get('/', async (request, respon) => {
    respon.setHeader('Content-Type', 'application/json');
    const data = {
        message: 'semua data berita',
        api:[
            {
                name: 'CNN Indonesia',
                all: '/cnnindonesia',
                section: [
                    "/cnnindonesia/nasional",
                    "/cnnindonesia/internasional",
                    "/cnnindonesia/ekonomi",
                    "/cnnindonesia/olahraga",
                    "/cnnindonesia/hiburan",
                    "/cnnindonesia/gaya-hidup",
                    "/cnnindonesia/teknologi"
                ],
                detail: '/cnnindonesia/:slug'
            },
            
            {
                name: 'Kompas',
                all: '/kompas',
                section: [
                    '/kompas/megapolitan',
                    '/kompas/regional',
                    '/kompas/nasional',
                    '/kompas/global',
                    '/kompas/money',
                    '/kompas/bola',
                    '/kompas/tekno',
                    '/kompas/lifestyle',
                    '/kompas/health',
                    '/kompas/otomotif',
                ],
                detail: '/kompas/:slug'
            },

            {
                name: 'Tribunnews',
                all: '/tribunnews',
                section: [
                    '/tribunnews/news',
                    '/tribunnews/regional',
                    '/tribunnews/nasional',
                    '/tribunnews/internasional',
                    '/tribunnews/bisnis',
                    '/tribunnews/sport',
                    '/tribunnews/seleb',
                    '/tribunnews/lifestyle',
                    '/tribunnews/kesehatan',
                ],
                detail: '/tribunnews/:slug'
            },
        ]
    };
    respon.end(JSON.stringify(data));
});

news.get('/tribunnews', async (request, respon) => {
    var result = await tribunnews.getData("news");
    respon.setHeader('Content-Type', 'application/json');
    respon.end(JSON.stringify(result));
});

news.get('/tribunnews/:cat', async (request, respon) => {
    var result = await tribunnews.getData(request.params.cat || "news");
    respon.setHeader('Content-Type', 'application/json');
    respon.end(JSON.stringify(result));
});

news.get('/tribunnews/:cat/:y/:m/:d/:slug', async (request, respon) => {
    var result = await tribunnews.getDetail(`${request.params.cat}/${request.params.y}/${request.params.m}/${request.params.d}/${request.params.slug}`);
    respon.setHeader('Content-Type', 'application/json');
    respon.end(JSON.stringify(result));
});

news.get('/cnnindonesia', async (request, respon) => {
    var result = await cnnindonesia.getData("");
    respon.setHeader('Content-Type', 'application/json');
    respon.end(JSON.stringify(result));
});

news.get('/cnnindonesia/:cat', async (request, respon) => {
    var result = await cnnindonesia.getData(request.params.cat || "");
    respon.setHeader('Content-Type', 'application/json');
    respon.end(JSON.stringify(result));
});

news.get('/cnnindonesia/:cat/:id/:slug', async (request, respon) => {
    var result = await cnnindonesia.getDetail(`${request.params.cat}/${request.params.id}/${request.params.slug}`);
    respon.setHeader('Content-Type', 'application/json');
    respon.end(JSON.stringify(result));
});

news.get('/kompas', async (request, respon) => {
    var result = await kompas.getData("");
    respon.setHeader('Content-Type', 'application/json');
    respon.end(JSON.stringify(result));
});

news.get('/kompas/:cat', async (request, respon) => {
    var result = await kompas.getData(request.params.cat || "");
    respon.setHeader('Content-Type', 'application/json');
    respon.end(JSON.stringify(result));
});

news.get('/kompas/:cat/:read/:y/:m/:d/:id/:slug', async (request, respon) => {
    var result = await kompas.getDetail(`${request.params.cat}`,`${request.params.read}/${request.params.y}/${request.params.m}/${request.params.d}/${request.params.id}/${request.params.slug}`);
    respon.setHeader('Content-Type', 'application/json');
    respon.end(JSON.stringify(result));
});


news.listen(process.env.PORT || PORT, () => {
    console.log(`Server running on port: http://localhost:${PORT}`)
});

module.exports = news;