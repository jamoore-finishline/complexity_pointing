// app/javascript/packs/nested_fields.js
document.addEventListener('DOMContentLoaded', () => {
    const addBacklogItemButton = document.querySelector('#add_backlog_item');
    const backlogItemsDiv = document.querySelector('#backlog_items');
    const template = document.querySelector('#backlog_item_template').innerHTML;
  
    if (addBacklogItemButton) {
      addBacklogItemButton.addEventListener('click', (e) => {
        e.preventDefault();
        const newFields = document.createElement('div');
        newFields.innerHTML = template.replace(/NEW_RECORD/g, new Date().getTime());
        backlogItemsDiv.appendChild(newFields);
      });
    }
  
    document.addEventListener('click', (e) => {
      if (e.target.classList.contains('remove-backlog-item')) {
        e.preventDefault();
        e.target.closest('.nested-fields').remove();
      }
    });
  });
  