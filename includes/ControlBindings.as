import flash.utils.describeType;
import flash.ui.Keyboard;

public function setupInputControls():void
{
	//----------------------------------------------------------------
	// Base UI buttons 

	inputManager.AddBindableControl(
		"Button 1",
		"Activate button 1",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(0); };
		}(this));

	inputManager.AddBindableControl(
		"Button 2",
		"Activate button 2",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(1); };
		}(this));
		
	inputManager.AddBindableControl(
		"Button 3",
		"Activate button 3",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(2); };
		}(this));
		
	inputManager.AddBindableControl(
		"Button 4",
		"Activate button 4",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(3); };
		}(this));
		
	inputManager.AddBindableControl(
		"Button 5",
		"Activate button 5",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(4); };
		}(this));
		
	inputManager.AddBindableControl(
		"Button 6",
		"Activate button 6",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(5); };
		}(this));
		
	inputManager.AddBindableControl(
		"Button 7",
		"Activate button 7",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(6); };
		}(this));
		
	inputManager.AddBindableControl(
		"Button 8",
		"Activate button 8",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(7); };
		}(this));
		
	inputManager.AddBindableControl(
		"Button 9",
		"Activate button 9",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(8); };
		}(this));
		
	inputManager.AddBindableControl(
		"Button 10",
		"Activate button 10",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(9); };
		}(this));
		
	inputManager.AddBindableControl(
		"Button 11",
		"Activate button 11",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(10); };
		}(this));
		
	inputManager.AddBindableControl(
		"Button 12",
		"Activate button 12",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(11); };
		}(this));
		
	inputManager.AddBindableControl(
		"Button 13",
		"Activate button 13",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(12); };
		}(this));
		
	inputManager.AddBindableControl(
		"Button 14",
		"Activate button 14",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(13); };
		}(this));

	inputManager.AddBindableControl(
		"Button 15",
		"Activate button 15",
		function(inThis:*):Function {
			return function():void { inThis.pressButton(14); };
		}(this));
		

	//----------------------------------------------------------------
	// More exotic UI buttons

	inputManager.AddBindableControl(
		"SpaceBar",
		"Hit spacebar to go to next *n*",
		function(inThis:*):Function {
			return function():void { inThis.spacebarKeyEvt(); };
		}(this));
		
	inputManager.AddBindableControl(
		"Scroll Up",
		"Scroll up one increment",
		function(inThis:*):Function {
			return function():void { inThis.upScrollText(); };
		}(this));
		
	inputManager.AddBindableControl(
		"Scroll Down",
		"Scroll down one increment",
		function(inThis:*):Function {
			return function():void { inThis.downScrollText(); };
		}(this));

	inputManager.AddBindableControl(
		"Page Up",
		"Scroll up one page",
		function(inThis:*):Function {
			return function():void { inThis.pageUpScrollText(); };
		}(this));
		
	inputManager.AddBindableControl(
		"Page Down",
		"Scroll up one page",
		function(inThis:*):Function {
			return function():void { inThis.pageDownScrollText(); };
		}(this));
		
	inputManager.AddBindableControl(
		"Scroll To Start",
		"Go To Window Top",
		function(inThis:*):Function {
			return function():void { inThis.homeScrollText(); };
		}(this));
		
	inputManager.AddBindableControl(
		"Scroll To End",
		"Go To Window Bottom",
		function(inThis:*):Function {
			return function():void { inThis.endScrollText(); };
		}(this));
		
	inputManager.AddBindableControl(
		"Next Page",
		"Go to next page of text (?)",
		function(inThis:*):Function {
			return function():void { inThis.nextOutputPage(); };
		}(this));
		
	inputManager.AddBindableControl(
		"Previous Page",
		"Go to previous page of text (?)",
		function(inThis:*):Function {
			return function():void { inThis.prevOutputPage(); };
		}(this));
		
	inputManager.AddBindableControl(
		"Previous Button Page",
		"Go to the previous page of buttons",
		function(inThis:*):Function {
			return function():void { inThis.userInterface.buttonTray.execButtonPagePrevious(); };
		}(this));
		
	inputManager.AddBindableControl(
		"Next Button Page",
		"Go to the next page of buttons",
		function(inThis:*):Function {
			return function():void { inThis.userInterface.buttonTray.execButtonPageNext(); };
		}(this));
		
	inputManager.AddBindableControl(
		"Perks",
		"Go to the Perks page",
		function(inThis:*):Function {
			return function():void { inThis.userInterface.goPerksScreen(); };
		}(this));
		
	inputManager.AddBindableControl(
		"Appearance",
		"Go to the Appearance page",
		function(inThis:*):Function {
			return function():void { inThis.userInterface.goAppearanceScreen(); };
		}(this));
		
		inputManager.AddBindableControl(
		"Main Menu",
		"Go to the main menu",
		function(inThis:*):Function {
			return function():void { inThis.userInterface.goMainMenu(); };
		}(this));
		
		inputManager.AddBindableControl(
		"Save/Load Menu",
		"Go to the save/load menu",
		function(inThis:*):Function {
			return function():void { inThis.userInterface.goSaveLoadMenu(); };
		}(this));
		
	import classes.Cheats;
	
	inputManager.AddBindableControl(
		"Give ZilRations",
		"Give the player a bunch of zil rations",
		function():void {
			Cheats.GiveZilRations();
		},
		true);
		
	inputManager.AddBindableControl(
		"Room Transport",
		"Move to a specific room name",
		function():void {
			Cheats.RoomTeleport();
		},
		true);
		
	inputManager.AddBindableControl(
		"Scene Execute",
		"Execute a target scene by function name.",
		function():void {
			Cheats.SceneExecute();
		},
		true);
		
	inputManager.AddBindableControl(
		"XP to Level",
		"Grant XP to reach the next level.",
		function():void {
			Cheats.XPToLevel();
		},
		true);

	inputManager.AddBindableControl(
		"Force Default Treatment",
		"Force next Treatment to give expected results.",
		function():void {
			Cheats.TryTreatmentHaxDefault();
		},
		true);
	inputManager.AddBindableControl(
		"Force Cow-Girl Treatment",
		"Force next Treatment use to make the user an Cow-Girl.",
		function():void {
			Cheats.TryTreatmentHaxCowGirl();
		},
		true);
	inputManager.AddBindableControl(
		"Force Bull Treatment",
		"Force next Treatment use to make the user a Bull.",
		function():void {
			Cheats.TryTreatmentHaxBull();
		},
		true);
	inputManager.AddBindableControl(
		"Force Cum-Cow Treatment",
		"Force next Treatment use to make the user a Cum-Cow.",
		function():void {
			Cheats.TryTreatmentHaxCumCow();
		},
		true);
	inputManager.AddBindableControl(
		"Force Amazon Treatment",
		"Force next Treatment use to make the user an Amazon.",
		function():void {
			Cheats.TryTreatmentHaxAmazon();
		},
		true);
	inputManager.AddBindableControl(
		"Force Faux-Cow Treatment",
		"Force next Treatment use to make the user a Faux-Cow.",
		function():void {
			Cheats.TryTreatmentHaxFauxCow();
		},
		true);

	inputManager.AddBindableControl(
		"Infinte Item Use",
		"Prevents items from being consumed on use.",
		function():void {
			Cheats.infiniteItemUse();
		},
		true);

	inputManager.AddBindableControl(
		"Infinite Crew Space",
		"Allows you to fly no matter how full your ship may be.",
		function():void {
			Cheats.infiniteCrewSpace();
		},
		true);

	inputManager.AddBindableControl(
		"Destinations Unlocked",
		"Unlocks traveling to any planet.",
		function():void {
			Cheats.exploreUnlock();
		},
		true);

	inputManager.AddBindableControl(
		"Toggle Debug",
		"Enables or disables debug mode. Please do not share.",
		function():void {
			Cheats.toggleDebug();
		},
		true);
		
	inputManager.AddBindableControl(
		"Runamode Bess",
		"Changes Bess' name to Runa.",
		function():void {
			if (chars["BESS"] != undefined)
			{
				chars["BESS"].short = "Runa";
			}
		},
		true);
		
	inputManager.AddBindableControl(
		"100K Credits",
		"Grants 100K credits.",
		function():void 
		{
			pc.credits += 100000;
		},
		true);
	
	inputManager.AddBindableControl(
		"Time Skip",
		"Skips the entered amount of time.",
		function():void {
			Cheats.TimeSkip();
		},
		true);
	
	inputManager.AddBindableControl(
		"Toggle Seasons",
		"Toggle select holiday seasons.",
		function():void {
			Cheats.toggleSeasons();
		},
		true);
	inputManager.AddBindableControl(
		"Mitzi Unlock",
		"Unlock Mitzi as if she was rescued.",
		function():void {
			Cheats.MitziUnlock();
		},
		true);
	inputManager.AddBindableControl(
		"Space Yakuza Skip",
		"Sets Space Yakuza event chain to email stage.",
		function():void {
			Cheats.YakuzaUnlock();
		},
		true);
	inputManager.AddBindableControl(
		"Bianca Spawn",
		"Places Bianca wherever player is, if in compatible tile.",
		function():void {
			Cheats.BringMeAFox();
		},
		true);
	inputManager.AddBindableControl(
		"Nym-Foe Targets TiTS",
		"Toggle whether or not Nym-Foe will target the breasts when she injects silicone.",
		function():void {
			Cheats.BoobSiliconePlease();
		},
		true);
	inputManager.AddBindableControl(
		"Classic Lapinara",
		"Toggle whether the classic Lapinara on Tarkus will encounter you.",
		function():void {
			Cheats.ClassicLapinara();
		},
		true);
	inputManager.AddBindableControl(
		"Sexdoll Encounter",
		"Trigger an encounter with a WIP enemy from Kiro's Recruitment quest.",
		function():void {
			Cheats.SexdollEncounter();
		},
		true);
	inputManager.AddBindableControl(
		"Politically Correct Mode",
		"Toggle whether certain offensive words are used.",
		function():void {
			Cheats.SJWMode();
		},
		true);
	inputManager.AddBindableControl(
		"Ardia DM7+ Sex Choice",
		"Toggle whether Ardia chooses sex scenes at high dominance. May result in unintended behaviour.",
		function():void {
			Cheats.ArdiaLetsYouChoose();
		},
		true);
		
	inputManager.BindCheatSequence("Give ZilRations", 38, 40, 37, 39);
	inputManager.BindCheatSequence("Room Transport", "idclev");
	inputManager.BindCheatSequence("Scene Execute", "impulse");
	inputManager.BindCheatSequence("XP to Level", "motherlode");
	inputManager.BindCheatSequence("Politically Correct Mode","poison");
	inputManager.BindCheatSequence("100K Credits", "anotherbrickinthewall");
	inputManager.BindCheatSequence("Infinte Item Use", "urta");
	inputManager.BindCheatSequence("Infinite Crew Space", "clowncar");
	inputManager.BindCheatSequence("Toggle Debug", "fuckyou");
	inputManager.BindCheatSequence("Force Default Treatment", "treatment");
	inputManager.BindCheatSequence("Force Cow-Girl Treatment", "bimbo");
	inputManager.BindCheatSequence("Force Bull Treatment", "bull");
	inputManager.BindCheatSequence("Force Cum-Cow Treatment", "cumcow");
	inputManager.BindCheatSequence("Force Amazon Treatment", "amazon");
	inputManager.BindCheatSequence("Force Faux-Cow Treatment", "fauxcow");
	inputManager.BindCheatSequence("Destinations Unlocked", "marcopolo");
	inputManager.BindCheatSequence("Runamode Bess", "insaneinthemembrane");
	inputManager.BindCheatSequence("Time Skip", 56, 56, 77, 80, 72);
	inputManager.BindCheatSequence("Toggle Seasons", "tistheseason");
	inputManager.BindCheatSequence("Mitzi Unlock", "mitzi");
	inputManager.BindCheatSequence("Space Yakuza Skip", "anofferyoucantrefuse");
	inputManager.BindCheatSequence("Bianca Spawn", "healthdelivery");
	inputManager.BindCheatSequence("Nym-Foe Targets TiTS", "beshineforever");
	inputManager.BindCheatSequence("Classic Lapinara", "laplove");
	inputManager.BindCheatSequence("Sexdoll Encounter", "doll");
	inputManager.BindCheatSequence("Ardia DM7+ Sex Choice", "ardiaschoice");
	
	// Insert the default bindings
	inputManager.BindKeyToControl(49, "Button 1");             // case 49: pressButton(0);
	inputManager.BindKeyToControl(50, "Button 2");             // case 50: pressButton(1);
	inputManager.BindKeyToControl(51, "Button 3");             // case 51: pressButton(2);
	inputManager.BindKeyToControl(52, "Button 4");             // case 52: pressButton(3);
	inputManager.BindKeyToControl(53, "Button 5");             // case 53: pressButton(4);
	inputManager.BindKeyToControl(81, "Button 6");             // case 81: pressButton(5);
	inputManager.BindKeyToControl(87, "Button 7");             // case 87: pressButton(6);
	inputManager.BindKeyToControl(69, "Button 8");             // case 69: pressButton(7);
	inputManager.BindKeyToControl(82, "Button 9");             // case 82: pressButton(8);
	inputManager.BindKeyToControl(84, "Button 10");            // case 84: pressButton(9);
	inputManager.BindKeyToControl(65, "Button 11");            // case 65: pressButton(10);
	inputManager.BindKeyToControl(83, "Button 12");            // case 83: pressButton(11);
	inputManager.BindKeyToControl(68, "Button 13");            // case 68: pressButton(12);
	inputManager.BindKeyToControl(70, "Button 14");            // case 70: pressButton(13);
	inputManager.BindKeyToControl(71, "Button 15");            // case 71: pressButton(14);


	inputManager.BindKeyToControl(32, "SpaceBar");             // case 32: this.spacebarKeyEvt()
	inputManager.BindKeyToControl(38, "Scroll Up");            // case 38: upScrollText();
	inputManager.BindKeyToControl(40, "Scroll Down");          // case 40: downScrollText();
	inputManager.BindKeyToControl(34, "Page Down");            // case 34: this.pageDownScroll()
	inputManager.BindKeyToControl(192,"Page Down");
	inputManager.BindKeyToControl(33, "Page Up");              // case 33: this.pageUpScroll()
	inputManager.BindKeyToControl(36, "Scroll To Start");      // case 36: this.homeButtonScroll()
	inputManager.BindKeyToControl(35, "Scroll To End");        // case 35: this.endButtonScroll()
	inputManager.BindKeyToControl(54, "Next Page");            // case 54: this.pageNextButtonKeyEvt()
	inputManager.BindKeyToControl(89, "Previous Page");        // case 89: this.pagePrevButtonKeyEvt()
	inputManager.BindKeyToControl(90 , "Previous Button Page");
	inputManager.BindKeyToControl(88 , "Next Button Page");
	inputManager.BindKeyToControl(80, "Debug Menu");           // case 80: this.userInterface.debugmm();
	inputManager.BindKeyToControl(80, "Perks");
	inputManager.BindKeyToControl(78, "Appearance");
	inputManager.BindKeyToControl(77, "Main Menu");
	inputManager.BindKeyToControl(74, "Save/Load Menu");


	inputManager.RegisterDefaults();
}

//Choose between changing the main interface keybindings, the other keybindings, or reseting everything to the default
public function rebindInputControlsMenuChooseGroup():void
{
	clearOutput();
	clearMenu();
	output("Stuff");
	
	addButton(0, "Main Buttons", rebindInputControlsMenuMainButtons);
	addButton(1, "Other Keybinds", rebindOtherKeybinds);
	addButton(2, "Reset Keybinds", resetKeybindsToDefault);
	addButton(14, "Back", mainGameMenu);
	addButton(5, "Test", makeSureIHaveTheRightFunctionCall);
}

public function rebindInputControlsMenuMainButtons():void
{
	//(String.fromCharCode(inputManager.getControlMethod("Button " + (i + 1))))
	clearOutput();
	var keyDict:Dictionary = getKeyboardDict();
	var buttonName:String;

	output("Select a button to rebind the key.");
	
	for (var i:int = 0; i < 15; i++)
	{
		//Unbound Keys
		if (inputManager.GetControlMethod("Button " + (i + 1)) == -1)
		{
			buttonName = "Unbound";
			addButton(i, "" + buttonName, rebindInputControl, "Button " + (i + 1));
		}
		
		//Keycode not recognized by the dictionary
		else if (!keyDict[(inputManager.GetControlMethod("Button " + (i + 1)))])
		{
			
			buttonName = "Keycode ";
			buttonName += (inputManager.GetControlMethod("Button " + (i + 1)).toString());
			addButton(i, "" + buttonName, rebindInputControl, "Button " + (i + 1));
		}

		//Everything else
		else
		{
			buttonName = keyDict[(inputManager.GetControlMethod("Button " + (i + 1)))];
			if (buttonName.substring(0, 7) == "NUMBER_") 
			{
				buttonName = buttonName.charAt(buttonName.length - 1);
			}
			addButton(i, "" + buttonName, rebindInputControl, "Button " + (i + 1));
		}
	}
}

//The routing on this is a bit complicated. Things start
//1: Here, where setting the flag triggers a change in the main event handler, in the
//2: InputManager file (the KeyHandler function). That properly records and rebinds the key, before bouncing it back to 
//3: Here, where the keyboard dictionary function can be used to generate a proper hotkey to display (rather than a keycode), before finally sending it to the
//4: ButtonTray file, where private variables/functions can be accessed to actually change the hotkey symbol.
public function rebindInputControl(funcName:String):void
{
	clearOutput();
	clearMenu();
	output("The next key you press on your keyboard will be rebound as the control method for the selected button");

	//Hack method because I'm bad at this
	flags["REBOUND_KEY_FUNCTION"] = funcName;
}

public function rebindOtherKeybinds():void
{
	clearOutput();
	clearMenu();
	
	var keyDict:Dictionary = getKeyboardDict();
	var functionNames:Array = inputManager.GetFunctionNames();
	var functionNamesKeybinds:Array = new Array();
	var keycodeName:String;
	
	//Purge functions we don't need, and convert the keycode into a more readable format
	for (var i:int = 0; i < functionNames.length; i++)
	{
		//Ignore main button functions
		if (functionNames[i].substring(0, 7) == "Button ") continue; 
		
		else
		{
			//Unbound Keys
			if (inputManager.GetControlMethod(functionNames[i]) == -1)
			{
				functionNamesKeybinds.push([functionNames[i], "Unbound"]);
			}
		
			//Keycodes not recognized by the dictionary
			else if (!keyDict[(inputManager.GetControlMethod(functionNames[i]))])
			{
				functionNamesKeybinds.push([functionNames[i], ("Keycode "+ inputManager.GetControlMethod(functionNames[i]))]);
			}
		
			//Everything else
			else
			{
				keycodeName = keyDict[(inputManager.GetControlMethod(functionNames[i]))];
				//Stripping off the 'NUMBER_' prefix
				if (keycodeName.substring(0, 7) == "NUMBER_") 
				{
					functionNamesKeybinds.push([functionNames[i], keycodeName.charAt(keycodeName.length-1)]);
				}
				else functionNamesKeybinds.push([functionNames[i], keycodeName]);
			}
		}
	}
	
	output("Select a function to rebind the key.\n\n");
	
	for (i = 0; i < functionNamesKeybinds.length; i++)
	{
		output(functionNamesKeybinds[i][0] + ": ");
		output(functionNamesKeybinds[i][1] + "\n");
		
		addButton(i, functionNamesKeybinds[i][0], rebindInputControl, functionNamesKeybinds[i][0], "Current Keybind:", functionNamesKeybinds[i][1]);
	}
}

public function resetKeybindsToDefault():void
{
	clearOutput();
	clearMenu();
	
	inputManager.ResetToDefaults()
	output("Key-binds reset.");
	addButton(0, "Next", mainGameMenu);
}

public function changeHotkeyDisplay():void
{
	var keyDict:Dictionary = getKeyboardDict();
	var buttonName:String;
	var hotkeys:Array = new Array();
	
	for (var i:int = 0; i < 15; i++)
	{
		//Unbound Keys
		if (inputManager.GetControlMethod("Button " + (i + 1)) == -1)
		{
			hotkeys.push("*");
		}
		
		//Keycodes not recognized by the dictionary
		else if (!keyDict[(inputManager.GetControlMethod("Button " + (i + 1)))])
		{
			buttonName = "*";
			hotkeys.push(buttonName);
		}
		
		//Everything else
		else
		{
			buttonName = keyDict[(inputManager.GetControlMethod("Button " + (i + 1)))];
			
			//Stripping off the 'NUMBER_' prefix
			if (buttonName.substring(0, 7) == "NUMBER_") 
			{
				buttonName = buttonName.charAt(buttonName.length - 1);
			}
			
			if (buttonName.length > 1) buttonName = "*";
			
			hotkeys.push(buttonName);
		}
	}
	
	kGAMECLASS.userInterface.buttonTray.updateHotkeys(hotkeys);
}

public function makeSureIHaveTheRightFunctionCall():void
{
	showPerksList();
}

//Stolen from stack exchange
public function getKeyboardDict():Dictionary {
    var keyDescription:XML = describeType(Keyboard);
    var keyNames:XMLList = keyDescription..constant.@name;

    var keyboardDict:Dictionary = new Dictionary();

    var len:int = keyNames.length();
    for(var i:int = 0; i < len; i++) {
        keyboardDict[Keyboard[keyNames[i]]] = keyNames[i];
    }

    return keyboardDict;
}