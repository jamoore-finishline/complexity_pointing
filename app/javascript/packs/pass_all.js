// app/javascript/packs/pass_all.js

document.addEventListener('DOMContentLoaded', () => {
    const passCheckbox = document.getElementById('pass_all');
    const fields = ['ui_points', 'api_points', 'processor_points', 'task_scheduler_points', 'data_points', 'research_points', 'external_data_points', 'manual_testing_points'];
    
    if (passCheckbox) {
      passCheckbox.addEventListener('change', () => {
        const isChecked = passCheckbox.checked;
        
        fields.forEach(field => {
          const fieldElement = document.getElementById(`vote_${field}`);
          if (fieldElement) {
            fieldElement.value = isChecked ? '' : fieldElement.value;
          }
        });
      });
    }
  });
  