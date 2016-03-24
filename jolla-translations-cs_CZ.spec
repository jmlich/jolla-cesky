Name:           jolla-translations-cs_CZ
Version:        1.8
Release:        1
Summary:        Czech translations of OS for Jolla
Group:          System/Base

License:        BSD
URL:            http://www.jolla.com/
Source0:        %{name}-%{version}.tar.bz2

BuildRequires:  pkgconfig(Qt5Core)
BuildRequires:  qt5-qttools-linguist

BuildArch: noarch

%description


%prep
%setup -q


%build
make %{?_smp_mflags}


%install
rm -rf $RPM_BUILD_ROOT
make DESTDIR=$RPM_BUILD_ROOT install

%post
localedef -i cs_CZ -f UTF-8 cs_CZ.utf8

%files
%doc
%{_datadir}/translations/*.qm
%{_datadir}/jolla-supported-languages/cs.conf



%changelog
* Thu Jun 17 2015 Jozef Mlich <jmlich@redhat.com> - 1.8-1
- update 13

* Wed Feb 04 2015 Jozef Mlich <jmlich@redhat.com> - 1.5-1
- update 11

* Thu Jul 31 2014 Jozef Mlich <jmlich@redhat.com> - 1.1-1
- update to 1.0.8.19, Tahkalampi

* Sat Mar 22 2014 Jozef Mlich <jmlich@redhat.com> - 0.3-1
- update to current version on transifex

* Sun Mar 16 2014 Jozef Mlich <jmlich@redhat.com> - 0.1-1
- Initial release
