$ ->
  $("#checkbox_checked").on "change", ->
    total_amount = parseInt(document.getElementById("total").innerText.split("$")[1])
    if document.getElementById("checkbox_checked").checked
      amount = total_amount+20;
      document.getElementById("total").innerText  = "$" + amount
    if !document.getElementById("checkbox_checked").checked
      amount = total_amount-20;
      document.getElementById("total").innerText  = "$" + amount


  $('.checkbox-input').on 'change', ->
  # From the other examples
    price         = $(this).find('#price')[0].innerText
    amount        = parseFloat(price.split("$")[1])
    total_amount  = parseFloat(document.getElementById("total").innerText.split("$")[1])
    checkbox      = $(this).find('#checkbox')[0]

    if checkbox.checked
      actual_amount = total_amount+amount;
      document.getElementById("total").innerText  = "$" + actual_amount

    if !checkbox.checked
      actual_amount = total_amount-amount;
      document.getElementById("total").innerText  = "$" + actual_amount
