-- Create trigger functions for updating 'updated_at' field automatically
CREATE OR REPLACE FUNCTION update_modified_column()
RETURNS TRIGGER AS $$
BEGIN
   NEW.updated_at = CURRENT_TIMESTAMP;
   RETURN NEW;
END;
$$ LANGUAGE 'plpgsql';

-- Create triggers for all tables
CREATE TRIGGER update_users_modtime
BEFORE UPDATE ON users
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_user_profiles_modtime
BEFORE UPDATE ON user_profiles
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_disease_histories_modtime
BEFORE UPDATE ON disease_histories
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_medications_modtime
BEFORE UPDATE ON medications
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_medication_reminders_modtime
BEFORE UPDATE ON medication_reminders
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_appointment_reminders_modtime
BEFORE UPDATE ON appointment_reminders
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_food_categories_modtime
BEFORE UPDATE ON food_categories
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_foods_modtime
BEFORE UPDATE ON foods
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_physical_activities_modtime
BEFORE UPDATE ON physical_activities
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_health_articles_modtime
BEFORE UPDATE ON health_articles
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_activity_logs_modtime
BEFORE UPDATE ON activity_logs
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_relaxation_exercises_modtime
BEFORE UPDATE ON relaxation_exercises
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_mood_journals_modtime
BEFORE UPDATE ON mood_journals
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_todo_items_modtime
BEFORE UPDATE ON todo_items
FOR EACH ROW EXECUTE FUNCTION update_modified_column();

CREATE TRIGGER update_healthcare_providers_modtime
BEFORE UPDATE ON healthcare_providers
FOR EACH ROW EXECUTE FUNCTION update_modified_column(); 