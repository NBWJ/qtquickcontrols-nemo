/*
 * Copyright (C) 2013 Lucien Xu <sfietkonstantin@free.fr>
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public License
 * along with this library; see the file COPYING.LIB.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301, USA.
 */

// This class is autogenerated using themehelper.py
// Any modification done in this file will be overridden

#ifndef NEMOTHEMEGROOVE_H
#define NEMOTHEMEGROOVE_H

#include <QtCore/QObject>
#include <QtGui/QColor>

class NemoThemeGroove: public QObject
{
    Q_OBJECT
    Q_PROPERTY(QColor background READ background NOTIFY backgroundChanged)
    Q_PROPERTY(QColor foreground READ foreground NOTIFY foregroundChanged)
public:
    explicit NemoThemeGroove(QObject *parent = 0);
    QColor background() const;
    void setBackground(const QColor &background);
    QColor foreground() const;
    void setForeground(const QColor &foreground);
Q_SIGNALS:
    void backgroundChanged();
    void foregroundChanged();
private:
    QColor m_background;
    QColor m_foreground;
};

#endif //NEMOTHEMEGROOVE_H