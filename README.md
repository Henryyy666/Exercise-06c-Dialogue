# Exercise-06c-Dialogue

Exercise for MSCH-C220, 16 November 2021

A demonstration of this exercise is available at [https://youtu.be/3Bwh4tfpM9k](https://youtu.be/3Bwh4tfpM9k)

This exercise is an opportunity for you to experiment with an open source Godot Dialogue add-on called Dialogic. Dialogic has [been relatively recently released](https://dialogic.coppolaemilio.com/)—is it currently at release 1.3. It is still a little buggy around the edges, but it is a powerful system for creating and introducing dialogue systems into your games.

Fork this repository. When that process has completed, make sure that the top of the repository reads [your username]/Exercise-06c-Dialogue. *Edit the LICENSE and replace BL-MSCH-C220-F21 with your full name.* Commit your changes.

Clone the repository to a Local Path on your computer.

Open Godot. Import the project.godot file and open the "Dialogue" project.

Dialogic is released as a Godot add-on. I have already downloaded the plug-in and included it in the res://addon folder in this repository. If you get an immmediate error message, that is an indication that the addon needs to be enabled. This can be done in Project->Project Settings->Plugins and checking the Dialogic Enable box.

Back in your main window, you should now see an additional workspace tab labeled Dialogic. This is where we will do most of the work for this exercise.

The Game scene consists of a cyborg and a zombie standing on a platform suspended over a beach. We are going to allow them to have a conversation. Open the Dialogic workspace.

Dialogic uses a few main categories for assembling dialogue trees. Dialogues will take place between characters, so we will first set up our speakers:

 * Above the sidebar, find the icon labeled New Character (second from the left) and select it.
 * This first character should be called "Player". The color should be set as #74b816, and the Default portrait should be res://Assets/Player_Portrait.png. Underneath the picture you will see options for displaying the portrait. Set the Scale to 50%, Offset: -20x -175y
 * Create a second character called "Zombie". The color should be set as #1c7ed6, and the Default portrait should be res://Assets/Zombie_Portrait.png. Underneath the picture you will see options for displaying the portrait. Set the Scale to 50%, Offset: 20x -175y
 * There is a bug in Dialogic that will remove the "character join" nodes every time the characters are edited. Make sure you are happy with these characters before moving on
 * Next, we will create a timeline (left-most icon). Tap the button and then rename the new timeline to "conversation".
 * On the right-side bar, you should see several options. Select Character Join. In the resulting tile, tap the [Character] label and choose Zombie. Select the far-right position and leave the mirror icon unselected.
 * Select Character Join again. Choose Player as the [Character]. Select the far-left position and leave the mirror icon unselected.
 * Create a new Text Event. Choose the Zombie as the [Character]. In the text box, type "Growl".
 * Create a new Text Event. Choose the Player as the [Character]. In the text box, type "What did you say?".
 * Create a new Text Event. Choose the Zombie as the [Character]. In the text box, type "Growl".
 * Create a new Text Event. Choose the Player as the [Character]. In the text box, type "Okay, I think we understand each other.".
 * Finally, add a Close Dialog tile.

As you can see, Dialogic is quite powerful, and we are barely scratching the surface. It can handle branching conversations, updating variables, multiple themes and player portraits, etc. The documentation is still quite rudimentary, but it can be found at [https://dialogic.coppolaemilio.com/documentation/](https://dialogic.coppolaemilio.com/documentation/). There are also several fairly good YouTube tutorials exploring the plugin.

Go back to the 3D Workspace and select the Game node. Add attach a script, and save it as res://Game.gd. The contents of the script should be as follows:

```
extends Spatial

func _ready():
	var new_dialog = Dialogic.start('conversation')
	add_child(new_dialog)
```

Save the scene and run your project. You should see the dialogue appear on the screen. You can advance from one text even to the next using the Space bar (this is also configurable in Dialogic).

Quit Godot. In GitHub desktop, add a summary message, commit your changes and push them back to GitHub. If you return to and refresh your GitHub repository page, you should now see your updated files with the time when they were changed.

Now edit the README.md file. When you have finished editing, commit your changes, and then turn in the URL of the main repository page (https://github.com/[username]/Exercise-06c-Dialogue) on Canvas.

The final state of the file should be as follows (replacing the "Created by" information with your name):
```
# Exercise-06c-Dialogue

Exercise for MSCH-C220, 16 November 2021

An exploration of dialogue systems in Godot using Dialogic.

## Implementation
 - Built using Godot 3.3.3
 - [Dialogic 1.3](https://github.com/coppolaemilio/dialogic) created by Emilio Coppola.

## References
None

## Future Development
None

## Created by 
Jason Francis
```
