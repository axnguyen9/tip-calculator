# tip-calculator
# Pre-work - *Pre-work*

**Pre-work** is a tip calculator application for iOS.

Submitted by: **Anna Nguyen**

Time spent: **4** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Settings page to change the default tip percentage.
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Splitting tip across 2 or 3 people
- [x] Customizing the person symbol in settings

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/wM81zLe7hv.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

Describe any challenges encountered while building the app.

I had some trouble implementing the Settings page, especially while using UserDefault values and trying to access that across both pages. Additionally, the person symbol labels weren't initally responding on the tip-calculator page, and I realized that was because I'd connected the wrong label action (valueChanged instead of editingChanged). In settings, I realized I had to not only set the default values, but also *access* the default values to initially set the fields to the correct values as well. Other challenges I encountered were debugging when one of my UI elements were hooked to a deleted function or the wrong function.

## License

    Copyright [2020] [Anna Nguyen]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
