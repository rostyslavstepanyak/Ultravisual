var exec = require('cordova/exec');

var UltravisualPlugin = {
	create: function (successCallback, errorCallback) {
        UltravisualPlugin.tag = 0;
		exec(successCallback, errorCallback, 'UltravisualPlugin', 'create', []);
	},
    createItem:  function(label, details, image, options) {
       var tag = UltravisualPlugin.tag++;
       if (options && 'onSelect' in options && typeof(options['onSelect']) == 'function') {
          UltravisualPlugin.callbacks[tag] = {'onSelect':options.onSelect,'name':name};
       }
    
       cordova.exec("SlidingMenu.createItem", label, details, image, options);
    },
    onItemSelected = function(tag)
    {
        this.selectedItem = tag;
        if (typeof(this.callbacks[tag].onSelect) == 'function')
            this.callbacks[tag].onSelect(this.callbacks[tag].name);
    };

};

module.exports = UltravisualPlugin;