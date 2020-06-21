// category constraints
// id should be unique & always exist
CREATE CONSTRAINT unique_id_on_category ON (category:Category) ASSERT category.id IS UNIQUE;
CREATE CONSTRAINT exist_id_on_category ON (category:Category) ASSERT EXISTS (category.id);
// name should always exist
CREATE CONSTRAINT exist_name_on_category ON (category:Category) ASSERT EXISTS (category.name);

// duration constraints
// id should be unique & always exist
CREATE CONSTRAINT unique_id_on_duration ON (duration:Duration) ASSERT duration.id IS UNIQUE;
CREATE CONSTRAINT exist_id_on_duration ON (duration:Duration) ASSERT EXISTS (duration.id);
// length should always exist
CREATE CONSTRAINT exist_length_on_duration ON (duration:Duration) ASSERT EXISTS (duration.length);
// start should always exist
CREATE CONSTRAINT exist_start_on_duration ON (duration:Duration) ASSERT EXISTS (duration.start);
// end should always exist
CREATE CONSTRAINT exist_end_on_duration ON (duration:Duration) ASSERT EXISTS (duration.end);

// user constraints
// id
CREATE CONSTRAINT unique_id_on_user ON (user:User) ASSERT user.id IS UNIQUE;
CREATE CONSTRAINT exist_id_on_user ON (user:User) ASSERT EXISTS (user.id);
// name
CREATE CONSTRAINT exist_name_on_user ON (user:User) ASSERT EXISTS (user.name);
// email
CREATE CONSTRAINT unique_email_on_user ON (user:User) ASSERT user.email IS UNIQUE;
CREATE CONSTRAINT exist_email_on_user ON (user:User) ASSERT EXISTS (user.name);
// passcode
CREATE CONSTRAINT exist_passcode_on_user ON (user:User) ASSERT EXISTS (user.passcode);
