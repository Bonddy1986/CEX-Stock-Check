#!/bin/bash

#product_code=045496510060 #3DS Circle Pad Pro
product_code=045496510107 #3DS XL Circle Pad Pro
product_code=497436561310 #Shining In The Darkness
product_code=045496430450 #Mega Man 4, Unboxed
product_code=719593100041 #Rune Factory
product_code=8288628000 #SNK Vs Capcom Card Fighters
if [[ -f product.html ]]; then
    rm -f product.html
fi

while true; do ./cex_checker.sh && sleep 300; done
curl -s -L -o product.html https://uk.webuy.com/product-detail?id=${product_code}

if [[ -n $(grep "In stock online" product.html) ]]; then
    echo "This item is in stock"
else
    echo "This item is still out of stock"
fi 
fi

if [[ -f product.html ]]; then
    rm -f product.html
fi

curl -s -L -o product.html https://uk.webuy.com/product-detail?id=${product_code}

if [[ -n $(grep "In stock online" product.html) ]]; then
    echo "This item is in stock"
else
    echo "This item is still out of stock"
fi