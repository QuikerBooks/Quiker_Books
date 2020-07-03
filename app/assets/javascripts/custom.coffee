$ ->
  $("#checkbox_checked").on "change", ->
    if document.getElementById("checkbox_checked").checked
      total_amount = parseInt(document.getElementById("total").innerText.split("$")[1])
      amount = total_amount+20;
      document.getElementById("total").innerText  = "$" + amount
