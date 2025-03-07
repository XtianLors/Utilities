Add-Type -assembly System.Windows.Forms

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = 'Lauch Python IDLE'

$main_form.Width = 600
$main_form.Height = 400

$main_form.AutoSize = $true

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "Welcome to the python note taking."
$Label.Location = New-Object System.Drawing.Point(150, 5)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$ComboBox = New-Object System.Windows.Forms.ComboBox
$ComboBox.Width = 300
$Users = Get-ADUser -filter * -Properties 'Cristian Daniel López Rios'

ForEach ($User in $Users)
{
   $ComboBox.Items.Add($User.SamAccountName);
}

$ComboBox.Location = New-Object System.Drawing.Point(60, 100)
$main_form.Controls.Add($ComboBox)

$Label2 = New-Object System.Windows.Forms.Label
$Label2.Text = "Last Password Set: "
$Label2.Location = New-Object System.Drawing.Point(0, 40)
$Label2.Autosize = $true
$main_form.Controls.Add($Label2)

$Label3 = New-Object System.Windows.Forms.Label
$Label3.Font = "Verdana"
$Label3.Text = "Middle"
$Label3.Location = New-Object System.Drawing.Point(210, 140)
$Label3.AutoSize = $true
$main_form.Controls.Add($Label3)

$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(410, 240)
$Button.Size = New-Object System.Drawing.Size(120, 23)
$Button.Text = "Check"
$main_form.Controls.Add($Button)

$Button.Add_Click(
   {
      $Label3.Text = [datetime]::FromFileTime((Get-ADUser -identity $ComboBox.selectedItem -Properties pwdLastSet).pwdLastSet).ToString('MM dd yy : hh ss')
   }


)

$main_form.ShowDialog()
