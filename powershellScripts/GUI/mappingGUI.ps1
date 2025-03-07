Add-Type -assembly System.Windows.Forms

#Size Variables
$size_w = 600
$size_h = 400

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = 'Lauch Python IDLE'
$main_form.Width = $size_w
$main_form.Height = $size_h
$main_form.AutoSize = $true

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "MID"
$Label.Location = New-Object System.Drawing.Point(0, 0)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "(100, 0)"
$Label.Location = New-Object System.Drawing.Point(100, 0)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "(0, 100)"
$Label.Location = New-Object System.Drawing.Point(0, 100)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "(100, 100)"
$Label.Location = New-Object System.Drawing.Point(100, 100)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "(100, 100)"
$Label.Location = New-Object System.Drawing.Point(150, 120)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "(100, 100)"
$Label.Location = New-Object System.Drawing.Point(300, 200)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$main_form.ShowDialog()

