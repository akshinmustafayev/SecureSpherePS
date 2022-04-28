# Get-SecureSphereEnvironmentExport

## SYNOPSIS
Exports a list of configuration objects in XML format.

## SYNTAX

### Parameter Set 1 (Default)
```
Get-SecureSphereEnvironmentExport -ItemsToExport <Array> [<CommonParameters>]
```

## DESCRIPTION
Exports a list of configuration objects in XML format.
This method receives a list of configuration objects to export. The method exports each of these objects and their dependent objects in the XML format, and returns a zip file containing an XML file per object (grouped into folders by object type). Dependent objects are objects that are referenced by another object, which is already a part of the export. For example, if the user asks to export a DB audit policy that is related to an action set, this action set is exported (in a separate XML file) as a dependent object of the DB audit policy.
The following is the list of types of configuration objects by the Environment Export method:
1. Action sets
2. Agent Monitoring Rules
3. DB Audit policies
4. Command Groups
5. Database Table Groups
6. DB Enrichment Policies
7. Lookup Data Sets
8. Privileged Operation Groups

The user can use the ‘should-fail-on-unsupported-dependency’ query parameter to decide on method behavior when encountering a dependent object of an unsupported type as follows:
1. To ignore this dependent object and continue without exporting it. This is the default behavior.
2. To fail the method in such a case, and receive an error message.

If the user asks to export objects that do not exist in the system, or if the user logged into the system, but does not have viewpermissions, an error message is returned presenting these objects. If the logged in user does not have permissions to view a dependent object, exporting of the dependent object will cause method failure.

## EXAMPLES

### EXAMPLE 1

```powershell
$ItemsToExport = @(
    @{
        "type"  = "db-audit-policy"; 
        "names" = @(
            "Default Rule - All Events",
            "Database connections"
        )
    },
    @{
        "type"  = "lookup-data-set"; 
        "names" = @(
            "User Roles - From Active Directory (no domain)",
            "Default Database Account Mapping"
        )
    }
)

Get-SecureSphereEnvironmentExport -ItemsToExport $ItemsToExport
```

## PARAMETERS

### ItemsToExport
This parameter specifies the items to export grouped by type.

```yaml
Type: Array
Parameter Sets: Parameter Set 1
Aliases: none

Required: true
Position: named
Default Value: None
Pipeline Input: False
```

### \<CommonParameters\>
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

### Response Body
XML file

## NOTES

### Error Codes
IMP-10090 - Unsupported item type
IMP-10091 - Duplicate item type
IMP-10092 - The following items either were not found or the user lacks sufficient privileges to view them:
IMP-10093 - The following items, which are as of now unsupported by Environment Export, are referenced by items requested for export:

## RELATED LINKS

[Online Version:](https://github.com/akshinmustafayev/SecureSpherePS/tree/master/Documentation)

[Official Documentation:](https://docs.imperva.com/bundle/v13.6-api-reference-guide/page/61844.htm)



