classdef InverseKinematics
    methods(Static)
    
        function [phi, theta, psi] = eulerAngles(R)
            if (R(3,3) == 1)
                theta = 0;
                phi = 0;
                psi = atan2(R(1,1), R(2,1)) * 180/pi; 
            elseif (R(3,3) == -1)
                theta = 180;
                phi = 0;
                psi = atan2(-R(1,1), -R(2,1)) * 180/pi; 
            else
                theta = atan2(R(3,3), sqrt(1-R(3,3)^2)) * 180/pi;
                phi = atan2(R(1,3), R(2,3)) * 180/pi;
                psi = atan2(-R(3,1), R(3,2)) * 180/pi;
            end
        end

        function [q1, q2, q3] = RRR_antropomorphic(X, params)
            q1  = atan2(X(2), X(1)) * 180/pi;
            D   = (X(1)^2 + X(2)^2 + (X(3) - params(1))^2 - params(2)^2 - params(3)^2)/(2*params(2)*params(3));
            q3  = atan2(sqrt(1 - D^2), D) * 180/pi;
            q2  = (atan2(X(3)-params(1), sqrt(X(1)^2 + X(2)^2)) + atan2(params(3) * sind(q3), params(2) + params(3) * cosd(q3))) * 180/pi;
        end
    
    end
end