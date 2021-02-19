function New-ResourceGroup {
    param (
        # Resource Group
        [parameter(Mandatory)]
        [string]
        $rgName,

        # Location
        [parameter(Mandatory)]
        [string]
        $location
    )

    $params = @{
        'Name'     = $rgName
        'Location' = $location
    }

    New-AzResourceGroup @params
    
}