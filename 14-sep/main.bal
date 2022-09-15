import ballerina/http;

type ITunesSearchItem record {
    string collectionName;
    string collectionViewUrl;
};

type ITunesSearchResult record {
    ITunesSearchItem[] results;
};

type Album record {|
    string name;
    string url;
|};

service /ballerina on new http:Listener(8080) {
    resource function get albums(string artist) returns Album[]|error? {
        http:Client iTunes = check new("https://itunes.apple.com");
        ITunesSearchResult search = check iTunes->get(searchUrl(artist));
        return from ITunesSearchItem i in search.results
            select {name: i.collectionName, url: i.collectionViewUrl};
    }
}

function searchUrl(string artist) returns string {
    return "/search?term=" + artist + "&entity=album&attribute=allArtistTerm";
}
