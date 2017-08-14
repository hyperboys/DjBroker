var 
    pnlChatBox = $('#pnlChatBox'),
    chatToggle = $('#chatToggle'),
    displayName = $('#displayName'),
    lstDiscussion = $('#lstDiscussion'),
    pnlRegister = $('#pnlRegister'),
    pnlMessages = $('#pnlMessages'),
    lblMyName = $('#lblMyName'),
    txtMessage = $('#txtMessage'),
    pnlLoading = $('#pnlLoading'),
    btnStart = $('#btnStart'),
    txtUsername = $('#txtUsername'),
    txtTelephone = $('#txtTelephone'),
    txtEmail = $('#txtEmail'),
    btnSendMessage = $('#btnSendMessage'),
    chkPublicMode = $('#chkPublicMode'),
    lblRequired = $('#lblRequired'),
    btnHideChat = $('#btnHideChat');


$(function () {
    $.connection.hub.url = "http://203.146.129.248/chat/~/signalr";
    
    var isChatShow = false;
    var chat = $.connection.chatHub;

    var isPublicMode = function () { return chkPublicMode.is(':checked'); };


    chat.client.GetMessage = function (isPublic, roomId, name, message, dt, isAdmin) {
        console.log("getMessage", isPublic, roomId, name, message, dt, isAdmin);
        if (isPublic && !isPublicMode()) return;
        var encodedName = $('<div />').text(name).html();
        var encodedMsg = $('<div />').text(message).html();
        var classNames = name == displayName.val() ? 'me' : 'admin';
        if (isPublic) classNames = classNames + ' public';
        lstDiscussion.append('<li><strong class="' + classNames + '">' + encodedName + '</strong> <small class="dt">[' + dt + ']</small> : <br/>&nbsp;&nbsp;&nbsp;' + encodedMsg + '</li>');
        lstDiscussion.scrollTop(1000);
        console.log("Message displayed", name, message);
    };

    chat.client.StartChat = function (id, name) {
        console.log("startChat", id, name);
        displayName.val(name);
        pnlRegister.addClass('hidden');
        pnlMessages.removeClass('hidden');
        lblMyName.html(name);
        txtMessage.focus();
    };

    $.connection.hub.start().done(function () {
        console.log("Hub Start");

        chatToggle.removeClass('hidden');
        pnlLoading.addClass('hidden');
        pnlRegister.removeClass('hidden');


        toggleHideChat = function () {
            pnlChatBox.toggleClass('hidden');
            chatToggle.toggleClass('hidden');
        };

        chatToggle.click(function () { toggleHideChat(); });

        btnHideChat.click(function () { toggleHideChat(); });

        btnStart.click(function () {
            lblRequired.html('');
            if (txtUsername.val().trim() == '') {
                lblRequired.html('* กรุณากรอกชื่อ');
                return;
            }
            console.log("Chat Start", txtUsername.val(), txtTelephone.val(), txtEmail.val());
            chat.server.startClient(txtUsername.val(), txtTelephone.val(), txtEmail.val());
        });

        btnSendMessage.click(function () {
            console.log("Send Message", isPublicMode(), displayName.val(), txtMessage.val());
            if (isPublicMode()) {
                chat.server.sendAll(displayName.val(), txtMessage.val());
            } else {
                chat.server.sendToAdmin(displayName.val(), txtMessage.val());
            }

            txtMessage.val('');
            txtMessage.focus();
        });

        txtMessage.keyup(function (event) { if(event.keyCode == 13) btnSendMessage.click(); });

    });
});