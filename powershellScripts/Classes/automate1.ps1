

locat = $pwd

class Bookist {

    [string]   $Brand
    [string]   $Title
    [string]   $Author
    [string]   $Synopsis
    [string]   $Publisher
    [datetime] $PublishDate
    [int]      $PageCount
    [string]   $name

    [string] GetName() {
        this.$name = Read-Host 'What is your username?' 
        return $name}

    [void] OutThis(){ 
        $data = @($Title, $Author, $Synopsis, $Publisher, $PublishDate,  $PageCount)
        return $data }

}

$dev = [Device]::new()
$dev.Brand = @("Fabrikam, Inc.", "False Incorporation", "Jennifer Zussman", "All friends behave the same.", "Free Books Online. LLC", "viernes, 7 de marzo de 2025 11:56:39 a. m.", 55  ) 
$dev