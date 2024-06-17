function productvalidateform()
{
    let pname = document.getElementById('pname');
    let price = document.getElementById('price');
    let stock = document.getElementById('stock');

    if(checkproductname(pname))
    {
        if(checkprice(price))
        {
            if(checkstock(stock))
            {
                return true;              
            }
        }
    }
    return false;
}
function checkproductname(element)
{
    const validate=element.value.match(/^[a-z A-Z]+$/);
    if(validate)
    {
        return true;
    }
    else{
        alert("You must conyains only letters....!");
        element.focus();
        return false;
    }
}

function checkprice(element) {
    const validateNum = element.value.match(/[1-9]{1}[0-9]{9}/);
    if (validateNum && element.value.length == 10) {
        return true;
    } else {
        alert("Please Enter Valid Price, It's must contain maximum 10 Numbers...!");
        element.focus();
        return false;
    }
}                  

function checkstock(element) {
    const validateNum = element.value.match(/[1-9]{1}[0-9]{9}/);
    if (validateNum && element.value.length == 10) {
        return true;
    } else {
        alert("Please Enter Valid Stock Number, It's must contain Maximum 10 Numbers...!");
        element.focus();
        return false;
    }
}