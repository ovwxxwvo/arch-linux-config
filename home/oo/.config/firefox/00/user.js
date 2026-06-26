// Firefox config, standalone web browser from mozilla

// user_pref("", --);

user_pref("browser.startup.homepage", "~/.config/firefox/00/home.html");
user_pref("layout.css.devPixelsPerPx",                           "1.2" );
user_pref("widget.use-xdg-desktop-portal.file-picker",           1     );
user_pref("network.http.max-persistent-connections-per-server",  2     );

user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true  );
user_pref("devtools.chrome.enabled",                             true  );
user_pref("devtools.debugger.remote-enabled",                    true  );

user_pref("ui.systemUsesDarkTheme",                              1     );
user_pref("layout.css.prefers-color-scheme.content-override",    3     );

user_pref("ui.key.menuAccessKeyFocuses",                         false );
user_pref("browser.backspace_action",                            0     );

user_pref("browser.tabs.inTitlebar",                             0     );
user_pref("browser.link.open_newwindow",                         3     );
user_pref("browser.link.open_newwindow.restriction",             0     );

user_pref("toolkit.telemetry.reportingpolicy.firstRun",          false );
user_pref("app.shield.optoutstudies.enabled ",                   false );
user_pref("datareporting.healthreport.uploadEnabled",            false );

user_pref("media.autoplay.default",                              0     );
user_pref("media.autoplay.allow-muted",                          true  );
user_pref("media.autoplay.mute_all_autoplay",                    false );

// user_pref("browser.uiCustomization.state", "{\"placements\":{\"widget-overflow-fixed-list\":[],\"unified-extensions-area\":[\"_d10d0bf8-f5b5-c8b4-a8b2-2b9879e08c5d_-browser-action\"],\"nav-bar\":[\"sidebar-button\",\"back-button\",\"forward-button\",\"stop-reload-button\",\"vertical-spacer\",\"urlbar-container\",\"downloads-button\",\"unified-extensions-button\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[\"firefox-view-button\",\"tabbrowser-tabs\",\"firefox_tampermonkey_net-browser-action\",\"addon_darkreader_org-browser-action\",\"fxa-toolbar-menu-button\",\"new-tab-button\",\"alltabs-button\"],\"vertical-tabs\":[],\"PersonalToolbar\":[\"personal-bookmarks\"]},\"seen\":[\"addon_darkreader_org-browser-action\",\"firefox_tampermonkey_net-browser-action\",\"_d10d0bf8-f5b5-c8b4-a8b2-2b9879e08c5d_-browser-action\",\"developer-button\",\"screenshot-button\"],\"dirtyAreaCache\":[\"unified-extensions-area\",\"nav-bar\",\"vertical-tabs\",\"TabsToolbar\",\"toolbar-menubar\",\"PersonalToolbar\"],\"currentVersion\":23,\"newElementCount\":5}");

