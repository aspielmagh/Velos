<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="Velos.WebForm2" %>


<!DOCTYPE html>
<html>
<body>

    <style>
        .nonechecked {
            background-color: yellow;
        }

        #StudyCatHeader {
            color: navy;
        }

        .chkb {
            color: black;
        }
    </style>




    <select name="alternateId">
        <option value="">Select an option</option>
        <option value="Yes">Yes</option>
        <option value="No">No</option>
    </select>
 




 
    <h4  class="nonechecked"   id="StudyCatHeader"><br><b style="font-size:15px"><u>5) Determine EPIC status </u></b><b style="font-size:12px">(Select one option below):</b></h4>
     
    5) Determine EPIC status
    <div class="chkb">

        
    <table id="newstudyidTable" border="0" cellpadding="2" cellspacing="2" class="basetbl" width="100%">
        <tr>
            <td width="20%"><b style="FONT-SIZE: 15px">a) SEND STUDY TO EPIC:</b> </td>
            <td width="80%">
                <input id="alternateId12212" maxlength="100" name="alternateId12212" size="25" type="hidden" value="Y" />
                <input checked name="alternate" onclick="moreStudyDetFunctions.setValue(moreStudyDetFunctions.formObj,12212,73)" type="checkbox" value="Y" />
                <input name="recordType12212" type="hidden" value="M" />
                <input name="id12212" type="hidden" value="112008" />
                <input name="studyIdType" type="hidden" value="12212" />
                <input name="studyId" type="hidden" value="6572" />
            </td>
        </tr>
    </table>
    <table id="newstudyidTable0" border="0" cellpadding="2" cellspacing="2" class="basetbl" width="100%">
        <tr>
            <td width="20%"><b style="FONT-SIZE: 15px">b) DO NOT SEND STUDY TO EPIC:</b> </td>
            <td width="80%">
                <input id="alternateId26356" maxlength="100" name="alternateId26356" size="25" type="hidden" value="N" />
                <input name="alternate0" onclick="moreStudyDetFunctions.setValue(moreStudyDetFunctions.formObj,26356,74)" type="checkbox" value="N" />
                <input name="recordType26356" type="hidden" value="M" />
                <input name="id26356" type="hidden" value="112009" />
                <input name="studyIdType0" type="hidden" value="26356" />
                <input name="studyId0" type="hidden" value="6572" />
            </td>
        </tr>
    </table>

        
    </div>


        <script src="https://code.jquery.com/jquery-1.4.4.js"></script>

    <script>
        jQuery(document).ready(function () {
            $("#StudyCatHeader").addClass("nonechecked");

            var minid = 34;
            var maxid = 47 + 1;


            for (j = minid; j < maxid; j++) {

	
                 if ($("input:checkbox[onclick*=''," + j + "'']").attr("checked")) {
                     $("#StudyCatHeader").removeClass("nonechecked");
                     break;
                };
            }

 

            for (k = minid; k < maxid; k++) {


                $("input:checkbox[onclick*=''," + k + "'']").click(function () {
                   
                    $("#StudyCatHeader").addClass("nonechecked");   

                    for (jj = minid; jj < maxid; jj++) {

                       if ($("input:checkbox[onclick*=''," + jj + "'']").attr("checked")) {
                           $("#StudyCatHeader").removeClass("nonechecked");
                           break;

                        };
                    }
                                      
                })

            }; 


        });


    </script>
</body>
</html>
