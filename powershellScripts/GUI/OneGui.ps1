Add-Type -assembly System.Windows.Forms

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = 'Lauch Python IDLE'
$main_form.Width = 600
$main_form.Height = 400
$main_form.AutoSize = $true

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "O"
$Label.Location = New-Object System.Drawing.Point(315, 190)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Welcome to the python note taking."
$Label.Location = New-Object System.Drawing.Point(200, 210)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$ComboBox = New-Object System.Windows.Forms.ComboBox
$ComboBox.Width = 300
$Users = Get-ADUser -filter * -Properties 'Cristian Daniel López Rios'

ForEach ($User in $Users)
{
   $ComboBox.Items.Add($User.SamAccountName);
}

$ComboBox.Location = New-Object System.Drawing.Point(60, 290)
$main_form.Controls.Add($ComboBox)

$Label2 = New-Object System.Windows.Forms.Label
$Label2.Font = "Verdana"
$Label2.Text = "Last Password Set: "
$Label2.Location = New-Object System.Drawing.Point(0, 310)
$Label2.Autosize = $true
$main_form.Controls.Add($Label2)

$Label3 = New-Object System.Windows.Forms.Label
$Label3.Font = "Verdana"
$Label3.Text = "Right Corner"
$Label3.Location = New-Object System.Drawing.Point(500, 390)
$Label3.AutoSize = $true
$main_form.Controls.Add($Label3)

$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(205, 360)
$Button.Size = New-Object System.Drawing.Size(120, 23)
$Button.Text = "Check"
$main_form.Controls.Add($Button)

$menuMain         = New-Object System.Windows.Forms.MenuStrip
$mainToolStrip    = New-Object System.Windows.Forms.ToolStrip
$menuFile         = New-Object System.Windows.Forms.ToolStripMenuItem
$menuOpen         = New-Object System.Windows.Forms.ToolStripMenuItem
$menuSave         = New-Object System.Windows.Forms.ToolStripMenuItem
$menuExit         = New-Object System.Windows.Forms.ToolStripMenuItem
$menuHelp         = New-Object System.Windows.Forms.ToolStripMenuItem
$menuAbout        = New-Object System.Windows.Forms.ToolStripMenuItem
$toolStripOpen    = New-Object System.Windows.Forms.ToolStripButton
$toolStripSave    = New-Object System.Windows.Forms.ToolStripButton
$toolStripExit    = New-Object System.Windows.Forms.ToolStripButton
$toolStripAbout   = New-Object System.Windows.Forms.ToolStripButton

$main_form.MainMenuStrip = $menuMain
$main_form.Controls.Add($menuMain)
[void]$mainForm.Controls.Add($mainToolStrip)

# Show Menu Bar
[void]$main_Form.Controls.Add($menuMain)
# Menu: File
$menuFile.Text = "File"
[void]$menuMain.Items.Add($menuFile)

# Menu: File -> Open
$menuOpen.Text         = "Open"
$menuOpen.Add_Click({OpenFile})
[void]$menuFile.DropDownItems.Add($menuOpen)
# Menu: File -> Save
$menuSave.Text         = "Save"
$menuSave.Add_Click({SaveFile})
[void]$menuFile.DropDownItems.Add($menuSave)
# Menu: File -> Exit
$menuExit.Text         = "Exit"
$menuExit.Add_Click({$main_Form.Close()})
[void]$menuFile.DropDownItems.Add($menuExit)

# Menu: Help
$menuHelp.Text      = "Help"
[void]$menuMain.Items.Add($menuHelp)
# Menu: Help -> About
$menuAbout.Text      = "About"
$menuAbout.Add_Click({ShowAbout})
[void]$menuHelp.DropDownItems.Add($menuAbout)

$main_form.ShowDialog()
