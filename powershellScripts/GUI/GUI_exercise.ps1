Add-Type -assembly System.Windows.Forms

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = 'GUI for my PoSh Script'
$main_form.Width = 600
$main_form.Height = 400
$main_form.AutoSize = $true

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "AD User"
$Label.Location = New-Object System.Drawing.Point(50, 100)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$Label2 = New-Object System.Windows.Forms.Label
$Label2.Text = "Last Password Set:"
$Label2.Location  = New-Object System.Drawing.Point(0,200)
$Label2.AutoSize = $true
$main_form.Controls.Add($Label2)
$Label3 = New-Object System.Windows.Forms.Label
$Label3.Text = ""
$Label3.Location  = New-Object System.Drawing.Point(185,200)
$Label3.AutoSize = $true
$main_form.Controls.Add($Label3)

$Label4 = New-Object System.Windows.Forms.Label
$Label4.Text = ""
$Label4.Location  = New-Object System.Drawing.Point(435,135)
$Label4.AutoSize = $true
$main_form.Controls.Add($Label4)

$ComboBox = New-Object System.Windows.Forms.ComboBox
$ComboBox.Location = New-Object System.Drawing.Point(125, 100)
$ComboBox.Width = 300
$vars = 1, 2, 3, 4, 5, 6, 7
ForEach ($var in $vars)
{
   $ComboBox.Items.Add($var);   
}
$main_form.Controls.Add($ComboBox)

$pushIn = New-Object System.Windows.Forms.Button
$pushIn.Location = New-Object System.Drawing.Size(435,100)
$pushIn.Size = New-Object System.Drawing.Size(120,23)
$pushIn.Text = "Push"
$main_form.Controls.Add($pushIn)
            
            $positionW = 500
            $positionL = 300
$pushIn.Add_Click(
    {
        $end = [int]$ComboBox.SelectedItem
        for ($i = 0; $i -lt $end; $i++ ){
            $positionL = 300 + ($i * 25 )
            $CBox = New-Object System.Windows.Forms.CheckBox 
            $CBox.Location = New-Object System.Drawing.Size($positionW,$positionL)
            #$CBox.Size = New-Object System.Drawing.Size(230,23)
            $main_form.Controls.Add($CBox)
        }
    }
)

$Button = New-Object System.Windows.Forms.Button
$Button.Location = New-Object System.Drawing.Size(12,165)
$Button.Size = New-Object System.Drawing.Size(120,23)
$Button.Text = "Time Zone"
$main_form.Controls.Add($Button)

$Button.Add_Click(
    {
        $pDate = gtz
        $pDate = [String]$pDate
        $Label3.Text = $pDate
    }
)

$main_form.ShowDialog()