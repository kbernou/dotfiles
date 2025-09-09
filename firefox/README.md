# Firefox Tabs
Outlines how to remove the default tabs in Firefox to use the side tree tabs instead, as well as force the browser to request dark colour scheme.

## Instructions
* [Sidebery](https://addons.mozilla.org/en-CA/firefox/addon/sidebery/) extension for nice tabs on the side
* [Removing tab bar reference](https://www.userchrome.org/how-create-userchrome-css.html)

### Make Firefox always request dark theme
1. Set `layout.css.prefers-color-scheme.content-override` to 0 in `about:config`    
    0 = dark, 1 = light, 2 = system (default)   

### Remove the tab bar
1. Create a userChrome.css file:
    1. Type `about:support` into address bar
    2. Find the "Profile Folder" row, click button that says "Open Folder" (or the current OS equivalent)
    3. Create a new folder named "chrome"
    4. Create "userChrome.css" in the `chrome` directory OR copy the [`userChrome.css`](userChrome.css) file from here into the `chrom` directory
    5. In "Customize Toolbar", at the bottom, make sure "Titlebar" is checked
   
2. Set Firefox to look for `userChrome.css` at startup
    1. Enter `about:config` into address bar
    2. In the search box, type "userprof". If nothing shows up, you're done.
    3. If something shows up, set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`
    4. Change takes effect when the browser is relaunched
  
### Remove the revamped sidebar 
1. Type `about:config` into address bar
2. Enter `sidebar.revamp` into the search
3. Set it to `false`



