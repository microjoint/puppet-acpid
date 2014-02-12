require 'spec_helper'

describe 'acpid', :type => 'class' do

    context "On a Arch OS with no package name specified" do
        let :facts do
            {
                :osfamily => 'ArchLinux'
            }
        end

        it {
            should contain_package('acpid').with( { 'name' => 'acpid' } )
            should contain_service('acpid').with( { 'name' => 'acpid' } )
        }
    end

    context "On an unknown OS " do
        let :facts do
            {
                :osfamily => 'Darwin'
            }
        end

        it {
            expect { should raise_error(Puppet::Error) }
        }
    end
end
