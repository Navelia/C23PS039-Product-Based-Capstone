const axios = require("axios");
const cheerio = require("cheerio");
const moment = require('moment');
moment.locale('id');


function getDateFromTimeAgo(timeString) {
    const timeAgo = { hours: 0, minutes: 0, seconds: 0 };

    const secondsAgoMatches = timeString.match(/^(\d+) (detik? yang lalu)/);
    const minutesAgoMatches = timeString.match(/^(\d+) (menit? yang lalu)/);
    const hoursAgoMatches = timeString.match(/^(\d+) (jam? yang lalu)/);
    const hoursAndMinutesAgoMatches = timeString.match(/^(\d+) (jam? dan) (\d+) (menit? yang lalu)/);

    if (secondsAgoMatches) {
        timeAgo.seconds = secondsAgoMatches[1];
    }
    if (minutesAgoMatches) {
        timeAgo.minutes = minutesAgoMatches[1];
    }
    if (hoursAgoMatches) {
        timeAgo.hours = hoursAgoMatches[1];
    }
    if (hoursAndMinutesAgoMatches) {
        timeAgo.hours = hoursAndMinutesAgoMatches[1];
        timeAgo.minutes = hoursAndMinutesAgoMatches[3];
    }

    return moment()
        .subtract(timeAgo.seconds, 'seconds')
        .subtract(timeAgo.minutes, 'minutes')
        .subtract(timeAgo.hours, 'hours')
        .format('YYYY-MM-DD hh:mm');

}



const base_url = "https://www.cnnindonesia.com";

async function getData(kategori) {
    moment.locale('id');
    const url = base_url + "/" + kategori.toLowerCase();

    let result = [];
    try {
        const response = await axios.get(url);
        const $ = cheerio.load(response.data);
        const isi = $("div.media_rows article");

        isi.each((i, e) => {
            const title = $('a span.box_text h2.title', e).text().replace("\n", "").trim();

            if (title != "") {
                const image_thumbnail = $('a img', e).attr('src');

                var url = new URL(image_thumbnail);
                var search_params = url.searchParams;
                search_params.set('w', '1024');
                search_params.set('q', '100');
                url.search = search_params.toString();

                var image_full = url.toString();
                var time = $('a .box_text .date', e)
                .text()
                .replace("•", "")
                .trim();
                

                const link = $('a', e).attr('href');
                const slug = (link != undefined) ? link.replace(base_url, "") : "";

                result.push({
                    title: title,
                    image_thumbnail: image_thumbnail,
                    image_full: image_full,
                    time: getDateFromTimeAgo(time),
                    link: link,
                    slug: slug
                });
            }
        });
    } catch (error) {

        console.log(error);
        result = {
            'error': error

        };
    }
    return result;
}

async function getDetail(slug) {
    const url = base_url + "/" + slug + "?page=all";

    const months = [
        {
            'short': 'Jan',
            'long': 'Januari'
        },
        {
            'short': 'Feb',
            'long': 'Februari'
        },
        {
            'short': 'Mar',
            'long': 'Maret'
        },
        {
            'short': 'Aprl',
            'long': 'April'
        },
        {
            'short': 'Mei',
            'long': 'Mei'
        },
        {
            'short': 'Jun',
            'long': 'Juni'
        },
        {
            'short': 'Jul',
            'long': 'Juli'
        },
        {
            'short': 'Agst',
            'long': 'Agustus'
        },
        {
            'short': 'Sept',
            'long': 'September'
        },
        {
            'short': 'Okt',
            'long': 'Oktober'
        },
        {
            'short': 'Nov',
            'long': 'November'
        },
        {
            'short': 'Des',
            'long': 'Desember'
        }

    ];

    let result = {};
    try {
        const response = await axios.get(url);
        const $ = cheerio.load(response.data);
        const title = $("#content .content_detail h1.title");
        const content = $("#content .content_detail .detail_wrap");
        $("script", content).remove();


        const image = $('#content .content_detail .media_artikel img').attr('src');

        var img_url = new URL(image);
        var search_params = img_url.searchParams;
        search_params.set('w', '1024');
        search_params.set('q', '100');

        img_url.search = search_params.toString();
        var image_full = img_url.toString();
       
        const time = $("#content .content_detail .date");
        const timeArr = time.text().split(" ");

        for (let i = 0; i < months.length; i++) {
            const month = months[i];

            if (month.short == timeArr[2]) {
                timeArr[2] = month.long;
            }
        }

        const theTime = timeArr.join(" ").replace(" WIB", "");
        let newTime = moment(theTime, 'dddd, DD MMMM YYYY hh:mm').format('YYYY-MM-DD hh:mm');

        const imgs = $("img",content);
        imgs.each((i, e) => {

            const img = $(e).attr('src');
            if($(e).closest(".lihatjg").length <= 0){
                medias.push({
                    type: 'image',
                    url: img

                });
            }
            
        });
        const articles = $("article",content);

        articles.each((i, e) => {
            const article = $('a',e).attr('href');
            medias.push({
                type: 'article',
                url: article
            });
        });

        result = {
            'title': title.text().replace("\n", "").trim(),
            'content': content.text().replace("\n", "").trim(),
            'image': image_full,
            'time': (newTime != "Invalid date")?newTime:theTime,
            'media': medias
        };

    } catch (error) {

        result = {
            'error': error
        };
    }
    return result;
}

module.exports = {
    getData: getData,
    getDetail: getDetail
};