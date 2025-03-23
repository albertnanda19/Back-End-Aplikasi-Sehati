-- Create indexes for frequently queried columns
CREATE INDEX idx_users_username ON users(username);
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_user_profiles_user_id ON user_profiles(user_id);
CREATE INDEX idx_disease_histories_user_id ON disease_histories(user_id);
CREATE INDEX idx_medications_user_id ON medications(user_id);
CREATE INDEX idx_medication_reminders_medication_id ON medication_reminders(medication_id);
CREATE INDEX idx_appointment_reminders_user_id ON appointment_reminders(user_id);
CREATE INDEX idx_foods_category_id ON foods(category_id);
CREATE INDEX idx_activity_logs_user_id ON activity_logs(user_id);
CREATE INDEX idx_mood_journals_user_id ON mood_journals(user_id);
CREATE INDEX idx_todo_items_user_id ON todo_items(user_id);
CREATE INDEX idx_healthcare_providers_type ON healthcare_providers(type);
CREATE INDEX idx_healthcare_providers_location ON healthcare_providers(city);
CREATE INDEX idx_healthcare_providers_coords ON healthcare_providers(latitude, longitude); 