# Firefox Tabs
Outlines how to remove the default tabs in Firefox to use the side tree tabs instead, as well as force the browser to request dark colour scheme.

## Instructions
* Tree tab extension: https://addons.mozilla.org/en-US/firefox/addon/tree-style-tab
* Removing tab bar reference: https://www.userchrome.org/how-create-userchrome-css.html

### Make Firefox always request dark theme
1. Set `layout.css.prefers-color-scheme.content-override` to 0 in `about:config`    
    0 = dark, 1 = light, 2 = system (default)   

### Remove the tab bar
1. Create a userChrome.css file:
    1. Type `about:support` into address bar
    2. Find the "Profile Folder" row, click button that says "Open Folder" (or the current OS equivalent)
    3. Create a new folder named "chrome"
    4. Create "userChrome.css" in the `chrome` directory

2. Put CSS into `userChrome.css`:
    1. Enter `#TabsToolbar { visibility: collapse !important; }` into the file to remove the tab bar

3. Set Firefox to look for `userChrome.css` at startup
    1. Enter `about:config` into address bar
    2. In the search box, type "userprof". If nothing shows up, you're done
    3. set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`
    4. Change should take effect at next start-up



