import boto3
import json
import time


def lambda_handler(event, context):
    # sleep()
    client = boto3.client('ec2')
    # TODO implement
    world = ""
    for elements in event['resources']:
        world = str(elements)
        print(world)
        cut_word = world[42:63]
        print(cut_word)
        # there should be a sleep function here
        time.sleep(40)
        response = client.describe_volumes(
            VolumeIds=[
                cut_word,
            ],
        )
        # print(response['Volumes'])
        for foo in response['Volumes']:
            print(foo)
            for bar in foo['Attachments']:
                # print(type(bar))
                print(bar['InstanceId'])
                # ssm = boto3.client('ssm')
                # response = ssm.send_command(
                #     InstanceIds=[bar['InstanceId']],
                #     DocumentName=documentName,
                #     DocumentVersion='$LATEST',
                #     Comment='testing ssm.send_command from lambda',
                #     # Parameters should be the drive in which volume is mounted
                #     Parameters={
                #         'VolumePath': [volumeIterator["path"]],
                #         'MountPoint': [volumeIterator["mountPoint"]],
                #         'MountNumber': [volumeIterator["mountNumber"]],
                #     },
                # )
        # print(type(world))
    # print(type(event['resources']))
    # print(type(event))
    return {
        'statusCode': 200,
        'body': json.dumps('Hello from Lambda!')
    }