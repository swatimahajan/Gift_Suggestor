# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Age_Group',
            fields=[
                ('age_id', models.AutoField(serialize=False, primary_key=True)),
                ('age_interval', models.IntegerField(max_length=10)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Occassion',
            fields=[
                ('occ_id', models.AutoField(serialize=False, primary_key=True)),
                ('occassion_name', models.CharField(max_length=20)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Recipient',
            fields=[
                ('rps_id', models.AutoField(serialize=False, primary_key=True)),
                ('relation', models.CharField(max_length=20)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
