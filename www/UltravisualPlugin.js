var exec = require('cordova/exec');

var UltravisualPlugin = {
	create: function (successCallback, errorCallback) {
        UltravisualPlugin.tag = 0;
		exec(successCallback, errorCallback, 'UltravisualPlugin', 'create', []);
	},
    createItem:  function(successCallback, errorCallback, label, details, image, options) {
       /*var tag = UltravisualPlugin.tag++;
       if (options && 'onSelect' in options && typeof(options['onSelect']) == 'function') {
          UltravisualPlugin.callbacks[tag] = {'onSelect':options.onSelect,'name':name};
       }
    */
       cordova.exec(successCallback,errorCallback, 'UltravisualPlugin', 'createItem', [label, details, image, options]);
    },
    onItemSelected : function(tag)
    {
        UltravisualPlugin.selectedItem = tag;
        if (typeof(UltravisualPlugin.callbacks[tag].onSelect) == 'function')
            UltravisualPlugin.callbacks[tag].onSelect(UltravisualPlugin.callbacks[tag].name);
    }

};

module.exports = UltravisualPlugin;