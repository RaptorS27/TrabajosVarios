codeunit 50600 "TCNFunciones"
{
    procedure PruebaReportToXmlF(pNumberReport: Integer) xSalida: text;
    var
        rlXMLBuffer: Record "XML Buffer";
        rlXmlSpecialInterestNode: record "XML Buffer";
        rplCustomerList: Report "Customer - List";
        culXMLBufferWriter: Codeunit "XML Buffer Writer";
        xlXmlParameter: Text;
    begin
        xlXmlParameter := REPORT.RUNREQUESTPAGE(pNumberReport);
        xSalida := xlXmlParameter;
        culXMLBufferWriter.InitializeXMLBufferFromText(rlXMLBuffer, xlXmlParameter);
        if rlXMLBuffer.FindLast() then begin
            if rlXmlSpecialInterestNode.GET(rlXMLBuffer."Parent Entry No.") then begin
                rplCustomerList.Execute(xlXmlParameter);
            end else begin
                Error('No se ha encobtrado el informe');
            end;
            rlXMLBuffer.DeleteAll();
        end;
    end;
}