Introduction
============

The goal of this repo is to demonstrate how Vagrant and RubyMine work together. 
The Vagrant file makes use of a simple bash script in the repo to install and set up a custom stack (Ubuntu, Ruby 2.1.3, rvm, bundler, etc.). 

The repo contains a sample Rails application (that RubyMine syncs to the vagrant box), but the idea can easily be extended to
a more complex application.

Similarly, note that the prescribed set up does not intentionally include 
all of the relevant rvm/rails/scripting best practices. 

Steps
======
1. Start RubyMine
2. Clone this repo (from the RM dialog box or from VCS menu).
3. Go to: Tools/Vagrant/Up. Wait till the box starts (takes a while).
4. Go to: RubyMine/Preferences/Tools/Vagrant (see Figure 1) to confirm box appears.
5. Go to: RubyMine/Preferences/Languages & Frameworks/RubySDK & Gems. 
a. Add remote SDK.
   Just like Figure 2, ensure that the path to remote ruby is the rvm gem folder, not remote ruby. That is, the path should be: /usr/local/rvm/gems/ruby-2.1.3
b. Make sure the default SDK selected is remote ruby by clicking on checkbox (shift green check mark). See Figure 2b.
6. Go to: Run/Edit Configurations/Ruby SDK/Use Other SDK (Select remote SDK as in Figure 3.)
7. Go to: Run/Run or Run/Debug (see note on debugging below).
7b. Confirm success by visiting localhost:3000/greetings/hello. See Figure 4.
8. Finally: Tools/Vagrant/Halt (when done).

Figure 1: Confirm Vagrant Box Availability
![Vagrant](images/vagrant.png)

Figure 2: Set Remote Ruby
![Set Ruby Path](images/configure_remote_ruby_interpreter.png)

Figure 2b: Select Remote Ruby
![Set Ruby Path](images/green_checkmark.png)

Figure 3: Updating Run/Debug Configuration
![Edit Configurations](images/edit_configuration.png)

Figure 4: Server Running
![Edit Configurations](images/running.png)


Debugging
=========
The Gemfile does not have a debugger, so RubyMine will alert you when
you try to run the debugger (via Run/Debug). 

Just click on "install debase" when prompted by RubyMine (or update your Gemfile as you see fit).

Notes
======
If RubyMine cannot find your gems, it means that it's interacting with a wrong Ruby version on your box. 
Make sure you have followed the steps correctly.