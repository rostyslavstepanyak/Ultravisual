# Ultravisual control plugin
Cordova/PhoneGap plugin to use Ultravisual UI control

#Usage
#####1. Add the plugin. 
```
cordova plugin add https://github.com/rostyslavstepanyak/Ultravisual
```
#####2. Create the root view controller as the Ultravisual component

```
UltravisualPlugin.create(function(){},function(){});
```
#####3. Populate items
```
UltravisualPlugin.createItem(function(){},function(){},'Title', 'Detailed text', 'some-image-name', { 
          onSelect: function() {
              alert("cordova: item selected");
          }
});
```
