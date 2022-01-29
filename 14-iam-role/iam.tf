#create IAM role and select type of trusted entity. In our case, we are choosing EC2

resource "aws_iam_role" "s3-mybucket-role" {
  name               = "s3-mybucket-role"
  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

#create instance profile, which can be used during attaching the role to ec2 

resource "aws_iam_instance_profile" "s3-mybucket-role-instanceprofile" {
  name = "s3-mybucket-role"
  role = aws_iam_role.s3-mybucket-role.name
}

#add policy to the role

resource "aws_iam_role_policy" "s3-mybucket-role-policy" {
  name = "s3-mybucket-role-policy"
  role = aws_iam_role.s3-mybucket-role.id
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": [
              "s3:*"
            ],
            "Resource": [
              "arn:aws:s3:::mybucket-c29df1",
              "arn:aws:s3:::mybucket-c29df1/*"
            ]
        }
    ]
}
EOF

}
