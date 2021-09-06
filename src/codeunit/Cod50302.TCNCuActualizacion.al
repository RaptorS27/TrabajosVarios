codeunit 50302 "TCNCuActualizacion"
{
    Subtype = Upgrade;
    trigger OnCheckPreconditionsPerCompany()
    begin
    end;

    trigger OnCheckPreconditionsPerDatabase()
    begin
    end;

    trigger OnUpgradePerCompany()
    var
        pglConfAddOn: Page TCNConfAddOn;
    begin
        pglConfAddOn.AccionesAlInstalarYAcutalizarF();
    end;

    trigger OnUpgradePerDatabase()
    begin
    end;

    trigger OnValidateUpgradePerCompany()
    begin
    end;

    trigger OnValidateUpgradePerDatabase()
    begin
    end;
}