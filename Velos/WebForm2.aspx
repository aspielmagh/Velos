<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Velos.WebForm2" %>


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
 

    <script src="https://code.jquery.com/jquery-1.4.4.js"></script>


    <div id="StudyCatHeader"> <b><u>STUDY CATEGORIZATION*</u></b>   (Check All that apply) </div>


    <div class="chkb">

        
                <input   id="someid_1" type="checkbox" name="vehicle,37" value="Car" onclick="moreStudyDetFunctions.setValue(moreStudyDetFunctions.formObj,25338,35)" >
        I have a car<br>


        <input  id="someid_2" type="checkbox" name="vehicle,35" value="Boat" onclick="moreStudyDetFunctions.setValue(moreStudyDetFunctions.formObj,25336,36)"   checked>
        I have a boat<br>
        
        <input   id="someid_3" type="checkbox" name="news,36" value="Train" onclick="moreStudyDetFunctions.setValue(moreStudyDetFunctions.formObj,25337,37)" checked >
        I have a bike<br>

        
    </div>

    <script>
        jQuery(document).ready(function () {
            $("#StudyCatHeader").addClass("nonechecked");





			for (j = 35; j < 38; j++) {

	
                 if ($("input:checkbox[onclick*=''," + j + "'']").attr("checked")) {
                     $("#StudyCatHeader").removeClass("nonechecked");
                     alert("a checked box detected at the load  event");
                };
            }

 

            for (k = 35; k < 38; k++) {


                $("input:checkbox[onclick*=''," + k + "'']").click(function () {
                   
                    $("#StudyCatHeader").addClass("nonechecked");   

                    for (jj = 35; jj < 38; jj++) {

                       if ($("input:checkbox[onclick*=''," + jj + "'']").attr("checked")) {
                           $("#StudyCatHeader").removeClass("nonechecked");
                           alert("a checked box detected at the click event");
                        };
                    }
                                      
                })

            }; //  for (k = 35; k < 38; k++) {


        });


    </script>
</body>
</html>
