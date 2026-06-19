// Firefox config, standalone web browser from mozilla

try{
const{AboutNewTab}=ChromeUtils.importESModule("resource:///modules/AboutNewTab.sys.mjs");
AboutNewTab.newTabURL="file:///home/oo/.config/firefox/00/home.html";
}catch(e){console.error(e);}

