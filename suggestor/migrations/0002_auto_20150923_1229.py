# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('suggestor', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='recipient',
            old_name='rps_id',
            new_name='rp_id',
        ),
    ]
