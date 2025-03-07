Add-Type -assembly System.Windows.Forms

#Size Variables
$size_w = 600
$size_h = 400

#Defining the space; 
$vline = $size_w / 11 #To have halves choose 5, 7, 11
$hline = $size_h / 11 

    #points and vertices are the same; intersection of two lines.
    #
    #Mid point; the midpoint in the space matrix, th vertex.
    $v_midp = $vline * 6
    $h_midp = $hline * 6

    # upper-mid: um
    # upper-left: ul; upper-right: ur
    # mid-left: ml; mid-right: mr
    # down-left: dl; down-right: dr
    # down-mid: dm

    #Small square
        #um vertex
        $v_um = $vline * 6
        $h_um = $hline * 3        
        #ul vertex
        $v_ul = $hline * 3
        $h_ul = $vline * 3
        #ur vertex
        $v_ur = $vline * 9
        $h_ur = $hline * 3

        #ml vertex
        $v_ml = $vline * 3
        $h_ml = $hline * 6
        #mr vertex


        #dl vertex

        #dr vertex

        #dm vertex

$main_form = New-Object System.Windows.Forms.Form
$main_form.Text = 'Lauch Python IDLE'
$main_form.Width = $size_w
$main_form.Height = $size_h
$main_form.AutoSize = $true

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "MID"
$Label.Location = New-Object System.Drawing.Point($v_midp, $h_midp)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "um"
$Label.Location = New-Object System.Drawing.Point($v_um, $h_um)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)


$Label = New-Object System.Windows.Forms.Label
$Label.Text = "ul"
$Label.Location = New-Object System.Drawing.Point($v_ul, $h_ul)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)

$Label = New-Object System.Windows.Forms.Label
$Label.Text = "ur"
$Label.Location = New-Object System.Drawing.Point($v_ur, $h_ur)
$Label.AutoSize = $true
$main_form.Controls.Add($Label)


$main_form.ShowDialog()
