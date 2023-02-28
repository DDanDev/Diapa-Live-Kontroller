# Koolertron Live Streaming Controller

## Controller for atem live stream switchers and other live functions including obs and studioone, using cheap koolertron usb customizable keyboard.
---



Hello! This solution uses .ahk (autohotkey), the companion free app and the cheap small customizable keyboard by Koolertron. It also has a few keys for controlling VLC Media Player, OBS Studio, Presonus Studio One and Microsoft Power Point. The ahk code and the kooletron layout setup makes it easy to add anything else you might need or change my setup for your own usage.

It would also be very easy to use the main keyboard or any other form of input to control all pieces of hardware and software in your setup using ahk as the central piece of operation.

Using default keyboard keys up to F24 (yes it does go above f12) in such a way that we can have one person using the computer uninterrupted while a second person with the Koolertron Controller, through the ahk, executes all switching and program feed commands in the background without ever getting in the way of whatever task is being done by the first person, like taking core of the live stream itself, mixing audio or managing media to be inserted or overlayed on the stream. All in one computer.

# Usage
My koolertron and ahk are setup like the following table. The ahk code is very well commented so it's easy to change what you need or prefer, but feel free to get in touch with me for help changing around the keys if you need any help! 

One person sits in front of the multiview and operates the koolertron controller with assigned actions for pretty much everything while another person sits in front of the computer's keyboard, mouse and display and operates everything else that requires precise input, like text, media management, stream setup, etc.

---


<img alt="Koolertron MacroPad Mini Keyboard" title="Koolertron MacroPad Mini Keyboard" height="200" src="./Readme%20Imgs/Kooletron%20MacroPad.jpg" />
<p> Koolertron MacroPad </p>
<img alt="Koolertron MacroPad Mini Keyboard" title="Koolertron MacroPad Mini Keyboard" height="300" src="./Readme%20Imgs/My%20Kooletron%20MacroPad.jpg" /><img alt="Koolertron MacroPad Mini Keyboard" title="Koolertron MacroPad Mini Keyboard" height="300" src="./Readme Imgs/MyKoolertronKeys.jpg" />
<p>My Koolertron in use and my setup of keycaps</p>



<br>

The ahk in this repository is currently assigned as follows:

-|-|-|-|-|-
---|----|----|----|----|----
BlackMagic Atem Upstream Key <br>Cut On/Off | BM DownStream Key 1 Cut (click) <br> or Auto transition (Hold) | BM DSK2 <br>Cut/Auto <br>(click/hold) | OBS Source Toggle | Another OBS Source Toggle | OBS Cut (click) <br> Toggle Studio Mode (Hold) <br> Auto Transition (Double click)
BM Upstream Key <br>Go To Preset A | BM USK Go To B | BM USK Go To FullScreen | Studio One Toggle Mute Bus 1 | SOne Toggle Mute 2 | SOne <br>Mute 3 (Click) <br>Mute 4 (Hold)
BM Input 5 <br> > Cut to PGM or Preview (mode) <br> > Assign to AuxOutput (while mode button held) | BM In 6 <br>PGM/PVW/Aux | BM In 7 | BM in 8 | Toggle Mode to cut to PGM or PVW <br>(Hold and click input to send it to AUX) | BM Auto Transition PVW <> PGM
BM In 1 | BM In 2 | BM In 3 | BM In 4 || BM Cut <br>PVW <> PGM



<div>
    <img alt="Wireless USB Slide Advancer" title="Wireless USB Slide Advancer" height="200" src="./Readme Imgs/slide advancer.jpg" />
    <p>Any slide advancer can be setup to wirelessly trigger actions</p>
</div>

Previous Slide | Next Slide
---|---
Open (unmute) Studio One's Bus 1 | Close (mute) SOne's Bus 1

These are setup so a commentary person on a mic can have remote control for making sure his microphone is on for him to speak to the stream or off so he can speak freely.

---

<br>
There are a few other actions configured in the AHK but not currently assigned to any button, like: VLC Play/Pause, Next and Previous and several other available keybinds for toggling obs sources, etc.
<br><br>

# How does it work?
In sequence of events: 

1- Keys on koolertron when pressed send key presses to the operating system according to our setup, which has all keys assigned to keys we don't usually use including keys f13 up to f24, which exist in code but not in any keyboard. Keys on the main keyboard or even wireless slide advancer can also be used.

2- AutoHotKey captures certain key presses preventing them from being sent anywhere on the pc and instead executes certain pieces of code (which could also be just sending the key press of what we just pressed, if we chose to do so). Some keys are setup to perform a single action. Others have different actions for click, hold, double-click, click-and-hold. Other keys perform something different if a certain other key is being held down. One key in my setup is also a mode toggle, switching the actions performed by any number of other keys until toggled back. All these behaviours are easy to personalize in the ahk code in the repository and you can make each key do whatever you want after whatever combination. Feel free to ask for help editing the ahk. AHK is able to capture all input devices, so a simple wireless slide advancer for example has been made into a two button wireless controller which we can assign to execute anything we want on any piece of software or hardware in our setup.

3- For actions on BlackMagic Design Atem Switchers, ahk sends commands through the 'companion' app. Companion buttons can be pressed by ahk by simply making it "download", in the background with no interruption, the response from companion when an url adress in its local server is accessed. The response is saved in the same directory as the ahk or exe is run from with name "httpreply". This also means we could easily make other phones or computers in the same network send commands to our atem or other devices or softwares connected through companion.

4- For OBS we can simply have ahk perform normal keypresses binded in OBS settings to perform actions, as OBS can receive the keybinds on the background. We don't even need to send these keys directly into OBS, but we could if they would cause conflicts with other programs. I use f13 through f24 as inputs for OBS keybinds so no conflicts or accidental actions ever happen. 

5- Same is for Studio One commands, but we need to send the virtual keypresses into SOne's window and it's a different window than the one where we setup the actual keyboard shortcuts so there's a bit of a trick added to it.

6- Changing PowerPoint slides is extremely easy to be assigned to any key anywhere, just send page up and down keypresses to the powerpoint window.

7- Companion also offers connections to other useful software like VLC Media Player and a bunch of other devices too. It is also possible to connect OBS through companion instead of the simple keybinds.

<br><br>


# Setup
Follow the setup of the different pieces required to make it all work, in no particular order.

---
### <img alt="AutoHotKey AHK Logo" src="https://www.autohotkey.com/static/ahk_logo_no_text.svg" height="40" /> AutoHotKey
If you use my setup as is you don't need to install AHK, <a href="./EXE v5 Diapason Live Komplete Kompletely Kool Koolertron Kontroler.exe">just use the .exe file.</a>

If you are going to change or customize something you will need to <a href="./AHK (Editable) v5 Diapason Live Komplete Kompletely Kool Koolertron Kontroler.ahk">download my .ahk file</a> and install ahk to your computer so you can run the script and eventually compile it to exe. Get it here: https://www.autohotkey.com/

<br><br>

---
## <img alt="Bitfocus.io Companion Logo" src="https://bitfocus.io/images/brand/companion.png" height="40" /> Companion
Download companion from their website here: https://bitfocus.io/companion/

You will find a <a href="Configuration Presets\Companion - Import this full configuration file then adjust connection settings v5 Kool Kontroler.companionconfig">configuration file for companion</a> in the 'Configuration Presets' folder in the repository. Download it. Then launch companion, launch GUI. On the right side of the screen go to tab 'import/export' and import the companionconfig file.

On the left side of the screen click edit next to your atem or the other modules to fix your own connection to them. Edit the ip and your atem model. For the atem you will need the switcher to be on the same network and that the network allows your computer to see it (you should have your own router and your own little network so you can assign a fixed ip to your switcher. There are also obviously several other benefits to having your own private little local network isolated from whatever else connection you might have to the internet on each job).

My config file was made on companion version 2.1.0 - Some companion updates before did change somethings that made the config lose some buttons or change their address to trigger them from ahk. If you have trouble you might try to find an installer for my version or just re-create missing buttons or fix their address inside the .ahk

Make sure your port is 8000 and you're using localhost (127.0.0.1) on companion's window where you can launch the gui. If not, change it to be so. Should look like this:
<br><img alt="companion window showing 127.0.0.1:8000 configured" src="Readme Imgs\companionadress.png" height="300">

<br><br>

---
### <img alt="Koolertron Logo" src="https://www.koolertron.com/media/logo/default/lALPBGKodntk0QAyzMg_200_50.png" height="40" /> Koolertron MacroPad
I used the koolertron MacroPad with 23 keys. There are several design versions you can pick whatever suits you best. You could also use any other programmable keyboard or even just your main keyboard numpad or whatever keys or input device of your choice. In this case, it is not hard to edit the ahk accordingly.

If you go with a 23 keys Koolertron MacroPad, <a href="Configuration Presets\koolertron - use program and import this hex - v4 koolertron layout (Quick for CBTE) Diapason Live Komplete Kompletely Kool Koolertron Kontroler.hex">you can find the configuration file for it in the repository</a>, and also the <a href="Configuration Presets\hard to find on the web - software to configure Koolertron Macro Pad.zip">little program required to edit the product's keys</a>. I included the program here because I remember it was quite confusing trying to find it somewhere-not-official on the web back when I bought the mini-keyboard.

The configuration GUI will not have any way of choosing the upper F keys (F13 ~ F24) so they were manually edited in the .hex file the gui saves as preset then loaded back in.

My .hex file is a preset for the following layout binded to the keys:
-|-|-|-|-|-
---|---|---|---|---|---
F13|    F14|	F15|	F16|	F17|	F18
F19|	F20|	F21|	F22|	F23|	F24
F12|	F6| F7|	F8|	F9|	F10
F1|	F2|	F3|	F11|	|ScrollLock

Note these F keys and the ScrollLock will be disabled for anything else they would do on your computer once you run the ahk. That's why F4 and F5 were skipped. The person using the main keyboard should also take care about these keys knowing they would trigger actions just the same as the keys presses coming from the koolertron.

For easy reference here are the current keybinds as they are in the saved files in this repo, abbreviated from their full description above.
-|-|-|-|-|-
---|----|----|----|----|----
BMUSK | BMDSK1 | BMDSK2 | OBSSource1 | OBSSource2 | OBSCut/Auto/Studio
BMUSK <br>GoToA | BMUSK <br>GoToB | BMUSK <br>GoToFS | S1 On/Off <br>Ch.1 | S1 On/Off <br>Ch.2 | S1 On/Off<br>Ch.3 & Ch.4
BM 5 | BM 6 | BM 7 | BM 8 | ModeAuto/Cut <br>(Hold to AUX) | BM Auto
BM 1 | BM 2 | BM 3 | BM 4 | |BM Cut

<br><br>

---
### <img alt="OBS Studio Logo" src="https://obsproject.com/assets/images/new_icon_small-r.png" height="40"> OBS Studio
Simply open settings, go to the keyboard shortcuts and press the controller's OBS keys to setup the binds for the sources and other functions as desired.

**Note the way the ahk is currently setup doesn't send these keys straight into OBS so they might be used for any other keybinds elsewhere.** But since these are not isolated, you also need to take care so they don't trigger anything else unless intended. The OBS actions are currently setup passing the following keys to the operating system as if they were pressed by any regular keyboard: 
Virtual KeyPress | OBS Action (Set them up like this or use what you like)
---|---
Control + D | Cut
Control + F | Auto Transition
F17 | Toggle OBS Source 2
F18 | Toggle OBS Source 1
F19 | Unassigned
F22 | Studio Mode View (PVW and PGM separated)
F23 | Unassigned
F24 | Unassigned

To use the unassigned keys, find their action name in the ahk file's first part and add their GoSub, \<action\> to a koolertron (or another) key in the last part.

In OBS, make sure shortcuts are always enabled under: Advanced > Hotkeys > Hotkey Focus Behavior: Never disable hotkeys.
<br><br>

---
### <img alt="Presonus Studio One Logo" src="https://www.presonus.com/assets/img/nav/nav-icon-studio-one.svg" height="40"> PreSonus Studio One
Studio One is in my opinion the best DAW ever and I often also use it in live streams to make life easier and the audio better in several scenarios. A DAW is a Digital Audio Workstation, the software we use in audio studios. This program has a free-version if you're unfamiliar with it.

In this controller setup we only have a few keyboard shortcuts set up in studio one and the ahk sends these virtual key presses straight into SOne's window even while it's on the background, so we have uninterrupted control available to the switcher operator and the talking person with the remote slide advancer. Without getting in the way of whatever the PC person is doing.

The actions themselves are macros set up in S1 and then assigned a keyboard shortcut. The <a href="Configuration Presets\S1 Macros">macro presets are also found for your download and import here</a>. In case you want to program the macros yourself, you will be looking at select first track then optionally select next track, then toggle mute or set mute state. **Note the macro selects the tracks, so the options to follow selection under advanced settings>console are probably a bad idea to have enabled while using this setup.**

Since the key press is send straight into Sone's main window, it misses the settings window where you setup the keys. You can set up the keys either by importing <a href="Configuration Presets\S1 Shortcuts Koolertron Kontroler Studio One.keyscheme">my whole keyboard shortcuts preset file</a> found in this repository (there are several other customizations though). Or if you need to keep your own keys or set it up youself for whatever reason you will need to edit the ahk to remove the ",ahk_exe Studio One.exe ahk_class CCLWindowClass" at the end of each SOne configured action, then set your keys in S1, then put the rest of the line back in. Or set any other regular keys, export your shortcuts preset, then edit the xml and import back.

Studio One actions assigned to the koolertron are currently using these virtual key presses sent into the program's main window:

Virtual Key press | SOne Action assigned
---|---
F13 | Toggle Mute of the first track
F14 | Toggle Mute of second track
F15 | Toggle Mute 3rd track
F16 | Toggle Mute 4th track
F17 | Set Mute to ON for the first track
F18 | Set Mute to OFF for the first track

**USAGE!**

I recommend creating four busses and placing them as the four first tracks on your mixer view. The first bus will be available for the remote and the other 4 will be available for the switcher operator. You will then assign desired audio channels routed to each controllable bus.

<br><br>

---
### VLC Media Player
It is sometimes better to use VLC as a separate player routed into OBS through a single source than to have all media files imported as one source each into OBS. You can route the video by window-capturing the vlc's detached video render window or using NDI output as VLC's render output.

To control VLC we can use companion or with default media control keyboard buttons. 

<br><br>

---
### Microsoft PowerPoint
For some jobs, PowerPoint is often a better choice for managing overlays or media to be keyed or fullscreen inserted into the PGM through ATEM or through an OBS source. Rather than having too many files and too many operations happening straight inside OBS. I would often have a separate notebook with one whole person focused only on editing information on the go and switching slides in PPT. However when a ppt might run in the same computer and is already pre-made before the stream, a simple PgUp and PgDown sent into its window similar to S1's implementation would allow the switcher operator to advance preset USK scenes or media insertion sequence.

<br><br>

---
### Customizing your AHK
Each part of the ahk script is well commented and ahk's documentation is really really well written. I am also happy to help.
