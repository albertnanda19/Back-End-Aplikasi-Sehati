-- Activity Tracking
CREATE TABLE activity_logs (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID NOT NULL,
  activity_date DATE NOT NULL,
  activity_type VARCHAR(50) NOT NULL, -- e.g., "walking", "running", "cycling"
  duration_minutes INTEGER,
  distance_km DECIMAL(10, 2),
  steps INTEGER,
  calories_burned INTEGER,
  notes TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
); 