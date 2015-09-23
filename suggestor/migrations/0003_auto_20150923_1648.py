# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('suggestor', '0002_auto_20150923_1229'),
    ]

    operations = [
        migrations.AlterField(
            model_name='age_group',
            name='age_interval',
            field=models.CharField(max_length=10),
            preserve_default=True,
        ),
    ]
