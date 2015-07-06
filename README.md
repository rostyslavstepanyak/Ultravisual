# Ultravisual control plugin
Cordova/PhoneGap plugin to use Ultravisual UI control

#Usage

//Create the root view controoller as the RPSSLideMenu

UltravisualPlugin.create(function(){},function(){});

//Populate items

UltravisualPlugin.createItem(function(){},function(){},'Title', 'Native Item in UIColllectionView', 'some-image-name', {
                             onSelect: function() {
                                alert("cordova: item selected");
                             }
                        });
