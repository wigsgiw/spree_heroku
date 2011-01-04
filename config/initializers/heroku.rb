
aws_s3_file = File.join(Rails.root, 'config', 'aws_s3.yml')
HEROKU_AWS_S3 = if File.exists?(aws_s3_file)
                  YAML.load_file(aws_s3_file)[Rails.env]
                else Hash.new end

