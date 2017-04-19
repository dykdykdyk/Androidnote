angular.module('ufind1.services.items', [])

    .factory('itemService', function () {
        var items = [];

        return {
            all: function () {
                    return items;
            },
            get: function (itemId) {
                for (var i = 0; i < items.length; i++) {
                    if (items[i].id === itemId) {
                        return items[i];
                    }
                }
                return null;
            },
            add: function (item) {
                items = items.concat(item);
            },
            del: function (itemId) {
                for (var i = 0; i < items.length; i++) {
                    if (items[i].id === itemId) {
                        break;
                    }
                }

                if (i > -1) {
                    items.splice(i, 1);
                }
            }
        };
    });