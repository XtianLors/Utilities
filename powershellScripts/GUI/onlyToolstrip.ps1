
Add-Type -assembly System.Windows.Forms

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = 'With Toolstrip'
$main_form.Width = 600
$main_form.Height = 400
$main_form.AutoSize = $true

#Declare Main Menu
$menuMain = New-Object System.Windows.Forms.MenuStrip
$main_form.MainMenuStrip = $menuMain
$main_form.Controls.Add($menuMain)

#Declare toolstrip
$mainToolStrip = New-Object System.Windows.Forms.ToolStrip
[void]$mainForm.Controls.Add($mainToolStrip)

#File menu
$menuFile = New-Object System.Windows.Forms.ToolStripMenuItem
# Show Menu Bar
[void]$main_Form.Controls.Add($menuMain)
# Menu: File
$menuFile.Text = "File"
[void]$menuMain.Items.Add($menuFile)

# Menu: File -> Open
$menuOpen = New-Object System.Windows.Forms.ToolStripMenuItem
$menuOpen.Text         = "Open"
$menuOpen.Add_Click({OpenFile})
[void]$menuFile.DropDownItems.Add($menuOpen)

# Menu: File -> Save
$menuSave = New-Object System.Windows.Forms.ToolStripMenuItem
$menuSave.Text         = "Save"
$menuSave.Add_Click({SaveFile})
[void]$menuFile.DropDownItems.Add($menuSave)

# Menu: File -> Exit
$menuExit = New-Object System.Windows.Forms.ToolStripMenuItem
$menuExit.Text         = "Exit"
$menuExit.Add_Click({$main_Form.Close()})
[void]$menuFile.DropDownItems.Add($menuExit)

#About menu
$menuAbout = New-Object System.Windows.Forms.ToolStripMenuItem
# Show Menu Bar
[void]$main_Form.Controls.Add($menuAbout)
# Menu: File
$menuAbout.Text = "About"
[void]$menuMain.Items.Add($menuAbout)

# Menu: About -> Help
$aboutHelp = New-Object System.Windows.Forms.ToolStripMenuItem
$aboutHelp.Text         = "Help"
$aboutHelp.Add_Click({OpenFile})
[void]$menuFile.DropDownItems.Add($menuOpen)

# Menu: File -> Save
$menuContribute = New-Object System.Windows.Forms.ToolStripMenuItem
$menuSave.Text         = "Contribute"
$menuSave.Add_Click({SaveFile})
[void]$menuFile.DropDownItems.Add($menuSave)

# Menu: File -> Exit
$menuExit = New-Object System.Windows.Forms.ToolStripMenuItem
$menuExit.Text         = "Exit"
$menuExit.Add_Click({$main_Form.Close()})
[void]$menuFile.DropDownItems.Add($menuExit)




$main_form.ShowDialog()
