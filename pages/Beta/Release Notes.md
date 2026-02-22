---
uuid: 0b4a7d2d-0e00-40ee-8c51-00c3037faf8d
type: page
title: Release Notes
dateCreated: 2026-02-13T05:53:55.316Z
dateUpdated: 2026-02-22T07:53:57.692Z
---
# Release Notes

This page documents changes in each beta build of Nocturne Writer. The most recent build is listed first.

---

## Version 0.89.0 - February 22, 2026

### Fixes

* Export: fixed line spacing for page exports

* Editor: source formatting consistently applied when pasting HTML and Markdown content


---

## Version 0.87.1 - February 14, 2026

### What's New

* Added a Focus Mode document save indicator that appears when the currently active document is being saved. The indicator remains visible for 3 seconds and then fades out over 1 second. A toggle was added in Focus Mode settings to enable and disable its display.

* Added number of words per session display to Focus Mode, along with a toggle in Focus Mode settings to enable and disable its display.

* Added number of words per session display in the status bar in regular editor mode.

* Added Show Session time toggle in User Interface settings that displays the total session time in the status bar in the editor view.

* Added Reduce Motion toggle in User Interface settings to disable and enable animations (e.g., opening and closing panels).

* Added a draggable timer window that can be accessed from the View menu.

* Added a File Information dialog accessed from the Workspace and Scratchpad context menu to display path and creation/update information.

* Added Display Profiles. A display profile is an aggregate of theme, typography, spacing, UI scaling, editor, and focus mode settings that can be created and selected from the status bar in the regular editor view and focus menu in focus mode. Display Profiles can be renamed and deleted from User Interface settings.

* Added three default Display Profiles (which can be modified and/or deleted): Large Print, Deep Focus, and Low Stimulation.


### Fixes

* Fixed broken image loading in tabs after the computer wakes from sleep. Images now load as expected when tabs are reopened after a computer resumes from sleep.