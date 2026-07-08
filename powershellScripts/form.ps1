using namespace System.Windows.Forms
Add-Type -Assembly System.Windows.Forms

class MyForm : Form {
    MyForm() {
        [Application]::EnableVisualStyles()
        
        $this.Text = 'My Form'
        $this.Size = New-Object System.Drawing.Size(300, 200)
        $this.StartPosition = 'CenterScreen'
    }
}

$myForm = [MyForm]::new()
$myForm.ShowDialog()

#[Bratman117]. It is impossible to create a Windows Forms class without loading the assembly before parsing the file containing the class [Online]. Github. https://github.com/PowerShell/PowerShell/issues/21140
#[mklement0]. System.Windows.Forms assembly (WinForms) can no longer be loaded with Add-Type -AssemblyName #18851 [Online]. Github. https://github.com/PowerShell/PowerShell/issues/18851
# https://stackoverflow.com/questions/12923074/how-to-load-assemblies-in-powershell