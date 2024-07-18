document.addEventListener("DOMContentLoaded", () => {
    // Select all flash messages
    const flashMessages = document.querySelectorAll('.flash-alert');
  
    // Iterate through each flash message
    flashMessages.forEach(flash => {
      // Set a timeout to hide the flash message after 5 seconds (5000 milliseconds)
      setTimeout(() => {
        flash.classList.remove('show');
        flash.classList.add('fade');
        // Remove the flash message from the DOM after 0.5 seconds to ensure it’s hidden
        setTimeout(() => flash.remove(), 500);
      }, 5000);
    });
  });
  