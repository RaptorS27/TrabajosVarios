page 1001 TCNConfAddOn
{

    PageType = Card;
    SourceTable = "TCNConfAddOn";
    Caption = 'Configuración AddOn ';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;
    layout
    {
        area(content)
        {
            group(General)
            {
            }

        }
    }

    trigger OnOpenPage()
    begin
        Rec.InsertIfNotExists();
    end;

    procedure AccionesAlInstalarYAcutalizarF()
    var
        culFuncionesComunes: Codeunit TCN_FuncionesComunes;
        culFunciones: Codeunit "TCNFunciones";
        xlMensaje: label 'Se han regenerado los conjuntos de permisos';
    begin
        // Esta función se hace en esta página, ya que necesitamos una página por la instrucción CurrPage.ObjectId(false)
        culFuncionesComunes.CrearRolesAddOnF(culFunciones.NombreAppF(), culFuncionesComunes.FiltroObjetosAddOnF(ConfObjectIdF()));
        Message(xlMensaje);
    end;
    /// <summary>
    /// Devuelve un texto con el Nº del objeto de la página
    /// </summary>
    /// <returns></returns>
    procedure ConfObjectIdF(): Text
    begin
        exit(CurrPage.ObjectId(false));
    end;
}
