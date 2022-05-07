## browser extensions

Potential cookie / privacy addons, untested:
- I don't care about cookies
- Cookie AutoDelete
- Consent Manager

## Firefox CSS Tweaks

---

[CSS hack repo w/ readme](https://github.com/MrOtherGuy/firefox-csshacks) \
[some tutorials](http://forums.mozillazine.org/viewtopic.php?p=3519925#p3519925) \
[userChrome.css @ MozillaZine](http://kb.mozillazine.org/UserChrome.css)

0. Must set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true` in `about:config`.
1. Find your profile folder, if Firefox is running you can find by going to `about:support` and there should be a button with label `Open Folder` under application basics
2. Create a new folder to the profile folder and name it `chrome`
3. userChrome.css and userContent.css files should be created inside this `chrome` folder.
4. Note there is another folder called `chrome` inside the `chrome` folder created in step 3.

- [Here](https://github.com/bubbavox/firefox-css-tweaks) is a repo containing my custom `chrome` folder located in `C:\Users\bubba\AppData\Roaming\Mozilla\Firefox\Profiles\8rqcdtx2.default-release\`


---

[Remove folder icons](https://support.mozilla.org/en-US/questions/1226362) \
[Hide tabs toolbar (and move Windows UI buttons)](https://github.com/piroor/treestyletab/wiki/Code-snippets-for-custom-style-rules#hide-horizontal-tabs-at-the-top-of-the-window-1349-1672-2147)

---
