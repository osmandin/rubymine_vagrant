Steps
======
1. Start Rubymine
2. Clone repo
3. RubyMine/Preferences/Tools/Vagrant (see Figure 1)
4. Tools/Vagrant/Up
5. RubyMine/Preferences/Languages & Frameworks/RubySDK & Gems (it will take a while and some remote gems will appear)
6. Ensure path to ruby is rvm gem [1]
7. Make sure default is remote ruby now (see Figure 2)
8. Run/Edit Configurations/Ruby SDK/Use Other SDK (Select remote SDK. See Figure 3.)
9. Run/Run (or Debug for breakpoints, etc.)
10. Tools/Vagrant/Halt when done.

Screenshots
===========

Figure 1
![Vagrant](images/vagrant.png)

Figure 2
![Set Ruby SDK](images/rubysdk.png)

Figure 3
![Edit Configurations](images/edit_configuration.png)

Notes
=====
The Gemfile does not have a debugger, so RubyMine will alert you when
you try to run the debugger. Just click on "install debase" when prompted.

RubyMine might complain about other missing gems also due to possible refresh issue.

References
==========
[1] http://stackoverflow.com/questions/27546471/rubymine-vagrant-rvm