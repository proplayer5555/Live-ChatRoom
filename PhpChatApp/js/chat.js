    const form = document.querySelector('.typing-area');
    const messageInput = form.querySelector('.input-field');
    const chatBox = document.querySelector('.chat-box');
    const incomingId = form.querySelector('.incoming_id').value;

    form.addEventListener('submit', function (e) {
        e.preventDefault();
        const message = messageInput.value.trim();

        if (message !== '') {
            // Make an AJAX request to send the message
            const xhr = new XMLHttpRequest();
            xhr.open('POST', 'php/insert-chat.php', true);
            xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
            xhr.onload = function () {
                if (xhr.status === 200) {
                    messageInput.value = '';
                    fetchMessages(); // Fetch messages after sending a new one
                } else {
                    console.error('Error:', xhr.status, xhr.responseText);
                }
            };
            xhr.send(`incoming_id=${incomingId}&message=${encodeURIComponent(message)}`);
        }
    });

    // Function to fetch and display messages
    function fetchMessages() {
        // Make an AJAX request to get messages
        const xhr = new XMLHttpRequest();
        xhr.open('POST', 'php/get-chat.php', true);
        xhr.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
        xhr.onload = function () {
            if (xhr.status === 200) {
                chatBox.innerHTML = xhr.responseText;
                scrollToBottom();
            } else {
                console.error('Error:', xhr.status, xhr.responseText);
            }
        };
        xhr.send(`incoming_id=${incomingId}`);
    }

    // Function to scroll to the bottom of the chat box
    function scrollToBottom() {
        chatBox.scrollTop = chatBox.scrollHeight;
    }

    // Fetch messages initially and then set an interval to fetch new messages periodically
    fetchMessages();
    setInterval(fetchMessages, 2000); // Adjust the interval as needed
