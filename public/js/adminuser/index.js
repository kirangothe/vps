/**
 *
 * You can write your JS code here, DO NOT touch the default style file
 * because it will make it harder for you to update.
 *
 */
"use strict";

$(function() {
    var table = $('#maintable').DataTable({
        processing: true,
        serverSide: true,
        ajax: $('#maintable').attr('data-url'),
        columns: [
            { data: 'id', name: 'id' },
            { data: 'image', name: 'image' },
            { data: 'name', name: 'name' },
            { data: 'email', name: 'email' },
            { data: 'phone', name: 'phone' },
            { data: 'action', name: 'action' },
        ],
        "ordering": false
    });

    let hidecolumn = $('#maintable').data('hidecolumn');
    if(!hidecolumn) {
        table.column( 5 ).visible( false );
    }

});

$('#maintable').on('draw.dt', function () {
    $('[data-toggle="tooltip"]').tooltip();
})
function confirmDelete() {
    var r = confirm("Are you sure want to delete this record?");
    if (r == false) {
        return false;
    }
}